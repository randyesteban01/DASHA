update clientes set cli_balance = (Select isnull(sum(mov_monto-mov_abono),0)
from movimientos where emp_codigo = clientes.emp_codigo
and cli_codigo = clientes.cli_codigo
and mov_status = 'PEN')

update movimientos set mov_abono = mov_monto, mov_Status = 'PAG' where (mov_monto - mov_abono) < 1
and mov_status = 'PEN'

execute arregla 1
execute arregla 10
execute arregla 7
execute arregla 5
execute arregla 9
execute arregla 6
execute arregla 4
execute arregla 8

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

ALTER       PROCEDURE ARREGLA (@ven int)
AS
  DECLARE @REC INT;
  DECLARE CUR CURSOR FOR SELECT REC_NUMERO FROM RECIBOS
WHERE REC_FECHA BETWEEN CONVERT(DATETIME,'01-09-2006',105)
AND CONVERT(DATETIME,'30-09-2006',105)
AND EMP_CODIGO = 1
AND SUC_CODIGO = 1
AND VEN_CODIGO =@ven;
BEGIN
  

  OPEN CUR;
  FETCH NEXT FROM CUR INTO @REC;
  WHILE @@FETCH_STATUS = 0
  BEGIN
    EXECUTE ARREGLA_COMISION 1,1,@REC;

    FETCH NEXT FROM CUR INTO @REC;
  END
  CLOSE CUR;
  DEALLOCATE CUR;
END

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO





SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

ALTER     PROCEDURE arregla_comision (@EMPRESA INTEGER, @SUCURSAL INTEGER,
     @RECIBO  INTEGER)
AS
     declare @forma varchar(1);
     declare @tipo Integer;
     declare @fact Integer;
     declare @cli Integer;
     declare @sec Integer;
     declare @monto numeric(15,2);
     declare @TipoD varchar(3);
     declare @mov varchar(3);
     declare @fecha datetime;
     declare @total numeric(15,2);
     declare @usu integer;
     declare @ref varchar(15);
     declare @NCR INTEGER;
     declare @recfecha datetime;
     declare @CTACLI VARCHAR(15);
     declare @CTADESC VARCHAR(15);
     declare @CTANOM VARCHAR(60);
     declare @Comision numeric(15,2);
     declare @ComPagada numeric(15,2);
     declare @PorcCom numeric(15,2);
     declare @TotalCom numeric(15,2);
     declare @ComPagar numeric(15,2);
     declare @FacTotal numeric(15,2);
     declare @FacAbono numeric(15,2);
     declare @MtoRecibo numeric(15,2);
     declare @tiponde varchar(3);
	 declare c_detalle cursor for
          select d.fac_forma, d.tfa_codigo, d.det_numero, 
d.det_monto,
                 r.cli_codigo, d.det_tipo, d.mov_cuota, d.det_fecha,
                 r.rec_monto+isnull(r.rec_descuento,0), r.usu_codigo, 
r.rec_fecha
          from  det_Recibo d, recibos r
          where  d.emp_codigo = r.emp_codigo
                 and d.rec_numero = r.rec_numero
                 and d.emp_codigo = @empresa
				 and r.suc_codigo = @sucursal
                 and d.rec_numero = @recibo;

begin
        select @tiponde = m.tmo_siglas
        from   tiposmov m, parametros p
        where  m.emp_codigo = p.emp_codigo
               and m.tmo_codigo = p.par_movnde
               and p.emp_codigo = @empresa;	

  open c_detalle;
  fetch next from c_detalle into @forma, @tipo, @fact, @monto, @cli, 
		@TipoD, @sec, @fecha,
                @total, @usu, @recfecha;
  
  update recibos
  set    rec_comision = 0, rec_comisionpagada = 0
  where	 emp_codigo = @empresa
	 and suc_codigo = @sucursal
	 and rec_numero = @recibo;

  while @@fetch_status = 0
  begin
    select @mov = m.tmo_siglas
    from   tiposmov m, tiposfactura t
    where  m.emp_codigo = t.emp_codigo
           and m.tmo_codigo = t.tmo_codigo
           and t.emp_codigo = @empresa
           and t.tfa_codigo = @tipo;

    if (@TipoD <> @tiponde)  
	/*facturas*/
        begin
	  -- Calculando Comision

	  select @MtoRecibo = isnull(sum(det_monto),0)
	  from	 det_recibo
	  where	 emp_codigo = @empresa
		 and suc_codigo = @sucursal
		 and rec_numero = @recibo
		 and fac_forma  = @forma
		 and tfa_codigo = @tipo
		 and det_numero = @fact;

	  set @Comision = 0;
	  set @ComPagar = 0;
	  set @ComPagada = 0;

	  if (@TipoD = @mov)
	  begin
		  select @TotalCom = isnull(fac_comision,0), @ComPagada = 0,
			 @FacTotal = fac_total, @FacAbono = fac_abono
		  from	 facturas
	          where  emp_codigo = @empresa
	                 and fac_forma = @forma
	                 and tfa_codigo = @tipo
			 and suc_codigo = @sucursal
	                 and fac_numero = @fact;
	
		  set @PorcCom = isnull((@monto/(@FacTotal))*100,0);
		  set @ComPagar = ((@TotalCom - @ComPagada)*@PorcCom)/100;
		  set @Comision = @ComPagar;
	
		  update recibos
		  set	 rec_comision = rec_comision+@Comision, rec_comisionpagada = rec_comisionpagada+@Comision
		  where	 emp_codigo = @empresa
			 and suc_codigo = @sucursal
			 and rec_numero = @recibo;
	  end

	  if (@TipoD = @tiponde)
	  begin
		  select @TotalCom = isnull(fac_comision,0), @ComPagada = 0,
			 @FacTotal = fac_total, @FacAbono = fac_abono
		  from	 facturas
	          where  emp_codigo = @empresa
	                 and fac_forma = @forma
	                 and tfa_codigo = @tipo
			 and suc_codigo = @sucursal
	                 and fac_numero = @fact;
	
		  set @PorcCom = isnull((@monto/(@FacTotal))*100,0);
		  set @ComPagar = ((@TotalCom - @ComPagada)*@PorcCom)/100;
		  set @Comision = @ComPagar;
	
		  update recibos
		  set	 rec_comision = rec_comision+@Comision, rec_comisionpagada = rec_comisionpagada+@Comision
		  where	 emp_codigo = @empresa
			 and suc_codigo = @sucursal
			 and rec_numero = @recibo;
	  end

	  if (@TipoD <> @tiponde and @forma = 'X')
	  begin
		  select @TotalCom = isnull(((@monto*rec_porccomision)/100),0), 
			 @ComPagada = isnull(rec_comisionpagada,0),
			 @FacTotal = rec_monto, @FacAbono = 0
		  from	 recibos
	          where  emp_codigo = @empresa
			 and suc_codigo = @sucursal
	                 and rec_numero = @recibo;

		  set @PorcCom = isnull((@monto/(isnull(@FacTotal,0)))*100,0);
		  set @ComPagar = ((@TotalCom - @ComPagada)*@PorcCom)/100;
		  set @Comision = @Comision + @TotalCom;

		  update recibos
		  set	 rec_comision = @Comision, rec_comisionpagada = @Comision
		  where	 emp_codigo = @empresa
			 and suc_codigo = @sucursal
			 and rec_numero = @recibo;
	  end

      end
	fetch next from c_detalle into @forma, @tipo, @fact, @monto, @cli, @TipoD, 
		@sec, @fecha,
                @total, @usu, @recfecha;
  end
  close c_detalle;
  deallocate c_detalle;
end


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


ALTER   PROCEDURE PR_comision (@EMPRESA INTEGER, @SUCURSAL INTEGER, @RECIBO  INTEGER)
AS
     declare @forma varchar(1);
     declare @tipo Integer;
     declare @fact Integer;
     declare @cli Integer;
     declare @sec Integer;
     declare @monto numeric(15,2);
     declare @TipoD varchar(3);
     declare @mov varchar(3);
     declare @fecha datetime;
     declare @total numeric(15,2);
     declare @usu integer;
     declare @ref varchar(15);
     declare @NCR INTEGER;
     declare @recfecha datetime;
     declare @CTACLI VARCHAR(15);
     declare @CTADESC VARCHAR(15);
     declare @CTANOM VARCHAR(60);
     declare @Comision numeric(15,2);
     declare @ComPagada numeric(15,2);
     declare @PorcCom numeric(15,2);
     declare @TotalCom numeric(15,2);
     declare @ComPagar numeric(15,2);
     declare @FacTotal numeric(15,2);
     declare @FacAbono numeric(15,2);
     declare @tiponde varchar(3);
	 declare c_detalle cursor for
          select d.fac_forma, d.tfa_codigo, d.det_numero, d.det_monto+isnull(d.det_descuento,0),
                 r.cli_codigo, d.det_tipo, d.mov_cuota, d.det_fecha,
                 r.rec_monto+isnull(r.rec_descuento,0), r.usu_codigo, r.rec_fecha
          from  det_Recibo d, recibos r
          where  d.emp_codigo = r.emp_codigo
                 and d.rec_numero = r.rec_numero
                 and d.emp_codigo = @empresa
				 and r.suc_codigo = @sucursal
                 and d.rec_numero = @recibo;

begin
        select @tiponde = m.tmo_siglas
        from   tiposmov m, parametros p
        where  m.emp_codigo = p.emp_codigo
               and m.tmo_codigo = p.par_movnde
               and p.emp_codigo = @empresa;	

	  open c_detalle;
	  fetch next from c_detalle into @forma, @tipo, @fact, @monto, @cli, @TipoD, @sec, @fecha, @total, @usu, @recfecha;
		  update parametros set par_controlar = 'X';
      while @@fetch_status = 0
      begin

        select @mov = m.tmo_siglas
        from   tiposmov m, tiposfactura t
        where  m.emp_codigo = t.emp_codigo
               and m.tmo_codigo = t.tmo_codigo
               and t.emp_codigo = @empresa
               and t.tfa_codigo = @tipo;


        if (@TipoD <> @tiponde)
	/*facturas*/
        begin
	  -- Calculando Comision
	  set @Comision = 0;
	  set @ComPagar = 0;
	  
	  if (@TipoD = @mov and @forma = 'X')
	  begin
		  select @TotalCom = isnull(fac_comision,0), @ComPagada = isnull(fac_comisionpagada,0),
			 @FacTotal = fac_total, @FacAbono = fac_abono
		  from	 facturas
	          where  emp_codigo = @empresa
	                 and fac_forma = @forma
	                 and tfa_codigo = @tipo
			 and suc_codigo = @sucursal
	                 and fac_numero = @fact;

		  set @PorcCom = isnull((@monto/(isnull(@FacTotal,0)))*100,0);
		  set @ComPagar = ((@TotalCom - @ComPagada)*@PorcCom)/100;
		  set @Comision = @Comision + @ComPagar;
	  end
	  if (@TipoD <> @tiponde and @forma = 'X')
	  begin
		  select @TotalCom = isnull(((rec_monto*rec_porccomision)/100),0), 
			 @ComPagada = isnull(rec_comisionpagada,0),
			 @FacTotal = rec_monto, @FacAbono = 0
		  from	 recibos
	          where  emp_codigo = @empresa
			 and suc_codigo = @sucursal
	                 and rec_numero = @recibo;

		  set @PorcCom = isnull((@monto/(isnull(@FacTotal,0)))*100,0);
		  set @ComPagar = ((@TotalCom - @ComPagada)*@PorcCom)/100;
		  set @Comision = @Comision + @TotalCom;

	  end

	  update recibos
	  set	 rec_comision = @Comision, rec_comisionpagada = @Comision
	  where	 emp_codigo = @empresa
		 and suc_codigo = @sucursal
		 and rec_numero = @recibo;

	  if (@TipoD <> @tiponde)
	  begin
	          update facturas
	          set    fac_comisionpagada = isnull(fac_comisionpagada,0) + @ComPagar
	          where  emp_codigo = @empresa
	                 and fac_forma = @forma
	                 and tfa_codigo = @tipo
			 and suc_codigo = @sucursal
	                 and fac_numero = @fact;
	
	          update facturas
	          set    fac_status = 'PAG'
	          where  emp_codigo = @empresa
	                 and fac_forma = @forma
	                 and tfa_codigo = @tipo
	                 and fac_numero = @fact
			 and suc_codigo = @sucursal
	                 and fac_abono >= fac_total;
	  end

        end
        /* Notas de Debito */
        select   @mov = t.tmo_siglas
        from     tiposmov t, parametros p
        where    t.emp_codigo = p.emp_codigo
                 and t.tmo_Codigo = p.par_movnde
                 and t.emp_codigo = @empresa;

		fetch next from c_detalle into @forma, @tipo, @fact, @monto, @cli, @TipoD, @sec, @fecha, @total, @usu, @recfecha;
      end
	  close c_detalle;
	  deallocate c_detalle;

end



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

