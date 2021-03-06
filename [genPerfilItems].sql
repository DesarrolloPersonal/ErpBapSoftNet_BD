USE [bapEmpresa02]
GO
/****** Object:  StoredProcedure [dbo].[genPerfilItems]    Script Date: 03/10/2015 02:00:01 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	EXEC [dbo].[genPerfilItems]
*/

ALTER PROCEDURE [dbo].[genPerfilItems] 
AS
BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;	
	DELETE [dbo].[tb_perfilitems];

	BEGIN TRANSACTION;

	-- VENT-HORIZONTALES-ADMIN
	INSERT INTO [dbo].[tb_perfilitems]([idper],[plataforma], [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc])						
	SELECT N'600210000',N'1',100, N'Operaciones', 100, 0, 1, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'600210000',N'1',101, N'VENDEDOR', 100, 1, 1, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'600210000',N'1',102, N'Realizar Pedido', 101, 2, 1, NULL, 1, N'Comercial/Frm_Proformas.aspx', NULL UNION ALL
	SELECT N'600210000',N'1',103, N'Pedidos Realizados', 101, 3, 1, NULL, 1, N'Comercial/Listados/Lst_PedidosPend.aspx', NULL UNION ALL	
	SELECT N'600210000',N'1',104, N'Listado de Stock General', 101, 4, 1, NULL, 1, N'Comercial/Listados/Lst_Stocks2.aspx', NULL UNION ALL
	
	SELECT N'600210000',N'1',200, N'CTA.COBRAR', 100, 2, 1, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'600210000',N'1',200, N'Operaciones Cta.Cobrar', 200, 0, 2, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'600210000',N'1',201, N'Aprobación de Pedidos', 200, 1, 1, NULL, 1, N'Comercial/Listados/Lst_ProformaEval.aspx', NULL UNION ALL	
	SELECT N'600210000',N'1',202, N'Listado de Stock General', 200, 2, 1, NULL, 1, N'Comercial/Listados/Lst_Stocks2.aspx', NULL UNION ALL	

	SELECT N'600210000',N'1',300, N'GERENCIA', 100, 3, 1, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'600210000',N'1',301, N'Pedidos Pend.Aprobación', 300, 1, 1, NULL, 1, N'Comercial/Listados/Lst_ProformaPendAprob.aspx', NULL 	
	
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
			

	-- VENT-HORIZONTALES-GERENCIA
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper],[plataforma], [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc])						
	SELECT N'600210001',N'1',200, N'Listas', 300, 0, 3, NULL, 1, N'main.aspx', NULL UNION ALL	
	SELECT N'600210001',N'1',201, N'Pedidos Generados', 300, 1, 3, NULL, 1, N'Comercial/Listados/Lst_ProformaPendAprob.aspx', NULL 	
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;


	-- VENT-HORIZONTALES-VENDEDOR
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper],[plataforma], [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc])						
	SELECT N'600210002',N'1',100, N'Operaciones', 100, 0, 2, NULL, 1, N'main.aspx', NULL UNION ALL    
	SELECT N'600210002',N'1',102, N'Realizar Pedido', 100, 2, 2, NULL, 1, N'Comercial/Frm_Proformas.aspx', NULL UNION ALL
	SELECT N'600210002',N'1',103, N'Pedidos Realizados', 100, 3, 2, NULL, 1, N'Comercial/Listados/Lst_PedidosPend.aspx', NULL UNION ALL	
	--SELECT N'600210002',N'1',104, N'Listado de Stock x Articulos', 100, 4, 2, NULL, 1, N'Comercial/Listados/Lst_StocksArtic.aspx', NULL UNION ALL	
	SELECT N'600210002',N'1',105, N'Listado de Stock General', 100, 5, 2, NULL, 1, N'Comercial/Listados/Lst_Stocks2.aspx', NULL
	--SELECT N'600210002',N'1',105, N'Listado de Stock General', 100, 5, 2, NULL, 1, N'Comercial/Reportes/Rpt_StockDisp.aspx', NULL
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;


	-- VENT-HORIZONTALES-CUENTAS POR COBRAR
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper],[plataforma], [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc])						
	SELECT N'600210003',N'1',200, N'Listas', 200, 0, 1, NULL, 1, N'main.aspx', NULL UNION ALL	
	SELECT N'600210003',N'1',201, N'Aprobación de Pedidos', 200, 1, 1, NULL, 1, N'Comercial/Listados/Lst_ProformaEval.aspx', NULL UNION ALL
	--SELECT N'600210003',N'1',202, N'Listado de Stock x Articulos', 200, 2, 1, NULL, 1, N'Comercial/Listados/Lst_StocksArtic.aspx', NULL UNION ALL
	SELECT N'600210003',N'1',203, N'Listado de Stock General', 200, 3, 1, NULL, 1, N'Comercial/Listados/Lst_Stocks2.aspx', NULL
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;




	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc])	
	SELECT N'200200000', N'1', 101, N'Pedidos', 100, 1, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'200200000', N'1', 102, N'Nuevo Pedido', 101, 1, NULL, NULL, 1, N'D20COMER.0200PEDID.pedido_registrar.aspx', NULL UNION ALL
	SELECT N'200200000', N'1', 103, N'Modificar Pedido', 101, 2, NULL, NULL, 1, N'D20COMER.0200PEDID.pedido_modificar.aspx', NULL UNION ALL
	SELECT N'200200000', N'1', 104, N'Consultar Pedido', 101, 3, NULL, NULL, 1, N'D20COMER.0200PEDID.pedido_consultar.aspx', NULL UNION ALL
	SELECT N'200200000', N'1', 105, N'Documento de Tienda', 100, 2, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'200200000', N'1', 106, N'Nuevo Doc.Interno', 105, 1, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_movimiento_registrar.aspx', NULL UNION ALL
	SELECT N'200200000', N'1', 107, N'Nueva Boleta', 105, 2, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_movimiento_bv.aspx', NULL UNION ALL
	SELECT N'200200000', N'1', 108, N'Nueva Factura', 105, 3, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_movimiento_fa.aspx', NULL UNION ALL
	SELECT N'200200000', N'1', 109, N'Nueva Nota Credito', 105, 4, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_movimiento_nc.aspx', NULL UNION ALL
	SELECT N'200200000', N'1', 110, N'Nuevo Ticket', 105, 5, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_movimiento_tk.aspx', NULL UNION ALL
	SELECT N'200200000', N'1', 111, N'Modificar Documento', 105, 6, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_movimiento_modificar.aspx', NULL UNION ALL
	SELECT N'200200000', N'1', 112, N'Consultar Doc.Tienda', 105, 7, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_movimiento_consultar.aspx', NULL-- UNION ALL
	
	--SELECT N'200200000', N'1', 200, N'Catálogo', 200, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 201, N'Tasa de Tributaria', 200, 1, NULL, NULL, 1, N'CATALOGO.GENERAL.cliente.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 202, N'Tipo de Cambio', 200, 2, NULL, NULL, 1, N'CATALOGO.Generales.cliente.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 203, N'Constantes Generales', 200, 3, NULL, NULL, 1, N'CATALOGO.Generales.constantesGeneraleses.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 204, N'Serie de Documentos', 200, 4, NULL, NULL, 1, N'CATALOGO.Generales.modulolocaltipdocseries.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 205, N'Tiendas', 200, 5, NULL, NULL, 1, N'CATALOGO.Generales.tiendas.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 206, N'Clientes', 200, 6, NULL, NULL, 1, N'CATALOGO.Generales.cliente.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 207, N'Cargos Laborales', 200, 7, NULL, NULL, 1, N'CATALOGO.Generales.vendedorcorporativo.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 208, N'Personal de Tiendas', 200, 8, NULL, NULL, 1, N'CATALOGO.Generales.vendedorcorporativo.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 209, N'Rubros Movto Caja', 200, 9, NULL, NULL, 1, N'CATALOGO.Generales.broker.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 210, N'Conceptos Movto Caja', 200, 10, NULL, NULL, 1, N'CATALOGO.Generales.transportista.aspx', NULL UNION ALL
	
	--SELECT N'200200000', N'1', 300, N'Listados', 300, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 301, N'Stocks', 300, 1, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 302, N'Stock Artículo-Color-Talla', 301, 1, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_rpt_stock_artcoltall.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 303, N'Stock por Artículo', 301, 2, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_rpt_stock_articulo.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 304, N'Stock Artículos por Tienda', 301, 3, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_rpt_stock_artic_tienda.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 305, N'Documentos', 300, 2, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 306, N'Docu. Emitidos', 305, 1, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_rpt_docuemi.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 307, N'Docu. Emitidos (Tickets)', 305, 2, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_rpt_docuemi_tickets.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 308, N'Docu. Emitidos con Detalle', 305, 3, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_rpt_docuemi_condeta.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 309, N'Docu. Emitidos de Venta', 305, 4, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_rpt_docuemi_venta.aspx', NULL
	
	--SELECT N'200200000', N'1', 310, N'Conciliaciones', 300, 3, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 311, N'Listado de Inventarios', 310, 1, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_rpt_inventario.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 312, N'Conc. de Inventario', 310, 2, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_rpt_conc_inv.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 313, N'Conc. de Doc.Tienda', 310, 3, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_rpt_conc_doctda.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 314, N'Conc. de Doc.Traspasos', 310, 3, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_rpt_conc_doctraspasos.aspx', NULL UNION ALL
	
	--SELECT N'200200000', N'1', 315, N'Ranking', 300, 4, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 316, N'Rank Ventas x Tiendas', 315, 1, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_rpt_rank_vtas_tdas.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 317, N'Rank Ventas x Vendedor', 315, 2, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_rpt_rank_vtas_vend.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 318, N'Rank Ventas x Cliente', 315, 3, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_rpt_rank_vtas_cliente.aspx', NULL UNION ALL
	
	--SELECT N'200200000', N'1', 319, N'Analisis de Ventas', 315, 4, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 320, N'Ventas x Artículo', 300, 5, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_rpt_vtas_articulo.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 321, N'Ventas Artículo-Color-Talla', 320, 1, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_rpt_rank_vtas_artcoltall.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 322, N'Ventas Diarias x Tienda', 320, 2, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_rpt_rank_vtas_diariasxtda.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 323, N'Analisis por Semana', 320, 3, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_rpt_rank_vtas_analisisxsemana.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 324, N'Stocks vs Ventas', 300, 6, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 325, N'Stock vs Ventas x Artículo', 324, 1, NULL, NULL, 1, N'D20COMER.0200TIDAS.p1_rpt_stocksvsvtas_articulo.aspx', NULL
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;




	/*** MODULO COMERCIAL ADMINISTRADOR **/
	BEGIN TRANSACTION;
    INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc])
	--Registro Ventas
	SELECT N'200130000', N'1', 100, N'Tablas', 100, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'200130000', N'1', 101, N'Forma/Condiciones de Pago', 100, 1, NULL, NULL, 1, N'DA0CONTABILIDAD.Compras.Frm_CondicionesPago', NULL UNION ALL
	--SELECT N'200130000', N'1', 102, N'Rubro de Ventas', 100, 2, NULL, NULL, 1, N'DA0CONTABILIDAD.Contabilidad.Frm_RubroVentas', NULL UNION ALL
	
	SELECT N'200130000', N'1', 200, N'Movimientos', 200, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'200130000', N'1', 201, N'Registro de Ventas', 200, 1, NULL, NULL, 1, N'D20Comercial.Frm_RegistroVentas', NULL UNION ALL
	SELECT N'200130000', N'1', 202, N'Cancelacion Cobranzas', 200, 2, NULL, NULL, 1, N'D20Comercial.Frm_CancelacionesCobranzas', NULL UNION ALL
	SELECT N'200130000', N'1', 203, N'Canje de Letras por Pagar/Cobrar', 200, 3, NULL, NULL, 1, N'D20Comercial.Frm_CanjeLetras', NULL UNION ALL	
	
	SELECT N'200130000', N'1', 300, N'Reportes', 300, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'200130000', N'1', 301, N'Ventas Realizadas', 300, 1, NULL, NULL, 1, N'D20Comercial.Frm_ConsultarCancelaciones', NULL UNION ALL
	--SELECT N'200130000', N'1', 320, N'Clientes', 300, 2, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteCliPro', NULL UNION ALL
	
	--SELECT N'200130000', N'1', 330, N'Ventas por Cliente', 300, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'200130000', N'1', 331, N'Analítico', 330, 1, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_RegistroVentasAnalitico', NULL UNION ALL
	--SELECT N'200130000', N'1', 332, N'Resúmen', 330, 2, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_RegistroVentasResumen', NULL UNION ALL
	
	SELECT N'200130000', N'1', 400, N'Utilitarios', 400, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'200130000', N'1', 401, N'Registro de Letras', 400, 1, NULL, NULL, 1, N'D20Comercial.Frm_CanjeLetrasMovimiento', NULL 	

	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;



	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc])
	--SELECT N'200200000', N'1', 326, N'Stock vs Ventas x Articulo-Color-Talla', 324, 2, NULL, NULL, 1, N'D20COMER/0200TIDAS/p1_rpt_rank_stocksvsventas_artcoltall.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 400, N'Procesos', 400, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 500, N'Utilitarios', 500, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'200200000', N'1', 501, N'Impresion de CodBar', 500, 1, NULL, NULL, 1, N'D70PRODU/0100PRODU/pp_codigobarra.aspx', NULL UNION ALL
	
	--SELECT N'600200000', N'1', 100, N'Archivos', 100, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 101, N'Consultar Pedido', 100, 1, NULL, NULL, 1, N'D20COMER/0200PEDID/pedido_consultar.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 102, N'Consultar OrdProd', 100, 2, NULL, NULL, 1, N'D70PRODU/0100PRODU/ordenprod_consultar.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 103, N'Documento de Almacén', 100, 3, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 104, N'Nuevo Documento', 103, 1, NULL, NULL, 1, N'D60ALMAC/0200PTERM/pt_movimiento_registrar.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 105, N'Modificar Documento', 103, 2, NULL, NULL, 1, N'D60ALMAC/0200PTERM/pt_movimiento_modificar.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 106, N'Consultar Doc.Almacén', 103, 3, NULL, NULL, 1, N'D60ALMAC/0200PTERM/pt_movimiento_consultar.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 200, N'Catálogo', 200, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 201, N'Constantes Generaleses', 200, 1, NULL, NULL, 1, N'CATALOGO/GENERAL/constantesGenerales.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 202, N'Serie de Documentos', 200, 2, NULL, NULL, 1, N'CATALOGO/GENERAL/modulolocaltipdocseries.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 203, N'Clientes', 200, 3, NULL, NULL, 1, N'CATALOGO/GENERAL/cliente.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 204, N'Agentes Vendedores', 200, 4, NULL, NULL, 1, N'CATALOGO/GENERAL/vendedorcorporativo.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 205, N'Brokers', 200, 4, NULL, NULL, 1, N'CATALOGO/GENERAL/broker.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 206, N'Transportistas', 200, 5, NULL, NULL, 1, N'CATALOGO/GENERAL/transportista.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 300, N'Listados', 300, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 301, N'Stock Detallado', 300, 1, NULL, NULL, 1, N'D60ALMAC/0200PTERM/pt_stock_detallado.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 302, N'Stock Resumido', 300, 2, NULL, NULL, 1, N'D60ALMAC/0200PTERM/pt_stock_resumido.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 303, N'Kardex por Artículo', 300, 3, NULL, NULL, 1, N'D60ALMAC/0200PTERM/pt_kardex_articulo.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 304, N'Kardex por Ord.Prod.', 300, 4, NULL, NULL, 1, N'D60ALMAC/0200PTERM/pt_kardex_ordprod.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 305, N'Inventario', 300, 5, NULL, NULL, 1, N'D60ALMAC/0200PTERM/pt_inventario_listar.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 306, N'Conciliación de Inventario', 300, 6, NULL, NULL, 1, N'D60ALMAC/0200PTERM/pt_inventario_conciliacion.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 307, N'Ventas por Artículo', 300, 7, NULL, NULL, 1, N'D60ALMAC/0200PTERM/pt_ventas_articulo.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 308, N'Ventas Netas por Cliente', 300, 8, NULL, NULL, 1, N'D60ALMAC/0200PTERM/pt_ventas_cliente.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 309, N'Ventas Netas por Vendedor', 300, 9, NULL, NULL, 1, N'D60ALMAC/0200PTERM/pt_ventas_vendedor.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 310, N'Ventas Netas al Personal', 300, 10, NULL, NULL, 1, N'D60ALMAC/0200PTERM/pt_ventas_personal.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 400, N'Procesos', 400, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 500, N'Utilitarios', 500, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'600200000', N'1', 501, N'Impresion de CodBar', 500, 1, NULL, NULL, 1, N'D70PRODU/0100PRODU/pp_codigobarra.aspx', NULL UNION ALL
	
	SELECT N'501000000', N'1', 100, N'Archivos', 100, 0, 1, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 101, N'Consulta al Kardex', 100, 1, 1, NULL, 1, N'D60ALMACEN/tb_reporte_kardex.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 102, N'Consultar OrdProd', 100, 2, 1, NULL, 1, N'D70PRODU/0100PRODU/ordenprod_consultar.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 103, N'Rollos', 100, 3, 1, NULL, 1, N'D60ALMACEN/tb_producto_rollo.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 104, N'Documento de Almacén', 100, 4, 1, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 105, N'Emitir Documento', 104, 1, 1, NULL, 1, N'D60ALMACEN/tb_movimientorollo_mantenimiento.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 200, N'Catálogo', 200, 0, 2, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 201, N'Productos', 200, 1, 2, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 202, N'Lineas', 201, 2, 2, NULL, 1, N'D60ALMACEN/CATALOGO/tb_linea.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 203, N'Proveedores', 201, 3, 2, NULL, 1, N'D60ALMACEN/CATALOGO/tb_grupo.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 204, N'Artículos', 201, 4, 2, NULL, 1, N'D60ALMACEN/CATALOGO/tb_subgrupo.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 205, N'Producto', 201, 5, 2, NULL, 1, N'D60ALMACEN/CATALOGO/tb_productos.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 206, N'Constantes Generales', 200, 2, 2, NULL, 1, N'D00MAESTROS/constantesGenerales.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 207, N'Tipo de Documentos', 200, 3, 2, NULL, 1, N'D00MAESTROS/modulolocaltipdoc.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 208, N'Serie de Documentos', 200, 4, 2, NULL, 1, N'D00MAESTROS/modulolocaltipdocseries.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 209, N'Tributo-Tasa', 200, 5, 2, NULL, 1, N'D00MAESTROS/tributostasa.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 210, N'Tipo de Cambio', 200, 6, 2, NULL, 1, N'D00MAESTROS/tipodecambio.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 211, N'Tipos de Doc.Identidad', 200, 7, 2, NULL, 1, N'D00MAESTROS/tipdocidentidad.aspx', NULL
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 2.....Done!', 10, 1) WITH NOWAIT;

	BEGIN TRANSACTION;
	
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc])
	SELECT N'501000000', N'1', 212, N'Proveedor-Cliente', 200, 8, 2, NULL, 1, N'D00MAESTROS/cliente.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 213, N'Transportistas', 200, 9, 2, NULL, 1, N'D00MAESTROS/transportistas.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 214, N'Vendedores', 200, 10, 2, NULL, 1, N'D00MAESTROS/vendedorcorporativo.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 215, N'Centros de Costo', 200, 11, 2, NULL, 1, N'D00MAESTROS/centrosdecosto.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 300, N'Listados', 300, 0, 3, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 301, N'Balance de Stock', 300, 1, 3, NULL, 1, N'D60ALMACEN/tb_reporte_balancestock.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 302, N'Documentos del Período', 300, 2, 3, NULL, 1, N'D60ALMACEN/tb_reporte_movdiario.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 303, N'Stock por Artículo', 300, 3, 3, NULL, 1, N'D60ALMACEN/tb_reporte_stock_articulo.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 304, N'Stock por Rollos', 300, 4, 3, NULL, 1, N'D60ALMACEN/tb_reporte_0320_stock_rollos.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 305, N'Kardex por Artículo', 300, 5, 3, NULL, 1, N'D60ALMACEN/tb_reporte_kardex_articulo.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 306, N'Kardex por Rollos', 300, 6, 3, NULL, 1, N'D60ALMACEN/tb_reporte_0320_kardex_rollos.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 307, N'Inventario', 300, 7, 3, NULL, 1, N'D60ALMACEN/tb_inventario_listar.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 308, N'Consumos por OP', 300, 8, 3, NULL, 1, N'D60ALMACEN/tb_reporte_consumo_ord_produccion.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 400, N'Procesos', 400, 0, 4, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 401, N'Reorganización', 400, 1, 4, NULL, 1, N'D60ALMACEN/tb_local_reorganizacion.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 402, N'Toma de Inventario', 400, 2, 4, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 403, N'Generar Archivo de Trabajo', 402, 1, 4, NULL, 1, N'D60ALMACEN/tb_inventario_generafilework.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 404, N'Listado para Toma de Inventario', 402, 2, 4, NULL, 1, N'D60ALMACEN/tb_inventario_listadotoma.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 405, N'Carga Masiva de Inventario', 402, 3, 4, NULL, 1, N'D60ALMACEN/tb_inventario_cargamasiva.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 406, N'Transferencia a Archivo Trabajo', 402, 4, 4, NULL, 1, N'D60ALMACEN/tb_inventario_transferarchtrab.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 407, N'Digitación Diferencias de Inventario', 402, 5, 4, NULL, 1, N'DD60ALMACEN/tb_inventario_digitacion.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 408, N'Listado Diferencias de Inventario', 402, 6, 4, NULL, 1, N'D60ALMACEN/tb_inventario_listadodiferencias.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 409, N'Conformidad Toma de Inventario', 402, 7, 4, NULL, 1, N'D60ALMACEN/tb_inventario_conformidad.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 410, N'Cierre de Período', 400, 3, 4, NULL, 1, N'D60ALMACEN/tb_local_cierredeperiodo.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 411, N'Reorganización de Histórico', 400, 4, 4, NULL, 1, N'D60ALMACEN/tb_local_reorganizacionhistorico.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 412, N'Cierre de Período Inicio Operaciones', 400, 3, 4, NULL, 1, N'D60ALMACEN/tb_local_cierredeperiodo_inioperac.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 500, N'Utilitarios', 500, 0, 5, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 501, N'Borrado de Tablas', 500, 1, 5, NULL, 1, N'D60ALMACEN/tb_util_borratablas.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 502, N'Copia de Tablas', 500, 2, 5, NULL, 1, N'D60ALMACEN/tb_util_copiatablas.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 503, N'Exportación de Tablas', 500, 3, 5, NULL, 1, N'D60ALMACEN/tb_util_exportatablas.aspx', NULL UNION ALL
	SELECT N'501000000', N'1', 504, N'Impresion de CodBar', 500, 4, 5, NULL, 1, N'D60ALMACEN/tb_codigobarra.aspx', NULL    
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 3.....Done!', 10, 1) WITH NOWAIT;
    



	/*** MODULO ALMACEN DE DISTRIBUCION  -- ADMINISTRADOR **/
	BEGIN TRANSACTION; 
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma] , [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
 --   SELECT N'600100000', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600100000', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', null, '60', '0100', '001' UNION ALL

	SELECT N'600100000', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600100000', N'1', 202, N'Emitir Doc.Almacén', 200, 3, 1, NULL, 1, N'APT600100.Frm_movimiento', null, '60', '0100', '001' UNION ALL
	--SELECT N'600100000', N'1', 203, N'Emitir Comprobantes de Venta', 202, 1, 1, NULL, 1, N'APT600100.Frm_ventas', null, '60', '0100', '001' UNION ALL
	    	
	SELECT N'600100000', N'1', 300, N'Catálogo', 300, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600100000', N'1', 301, N'» Vendedores', 300, 1, 2, NULL, 1, N'APT600100.CATALOGO.Frm_vendedores', '0000', '60', '0100', '001' UNION ALL
	SELECT N'600100000', N'1', 302, N'» Canal Venta', 300, 2, 2, NULL, 1, N'APT600100.CATALOGO.Frm_canalvta', '0000', '60', '0100', '001' UNION ALL
	--SELECT N'600100000', N'1', 302, N'» Estructura', 300, 2, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_estructura', '0000', '60', '0100', '001' UNION ALL
	--SELECT N'600100000', N'1', 303, N'» Linea', 300, 3, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_linea', '0000', '60', '0100', '001' UNION ALL
	
	--SELECT N'600100000', N'1', 600, N'Administración', 600, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    --SELECT N'600100000', N'1', 601, N'Lista de Clientes', 600, 1, 3, NULL, 1, N'MERCADERIA02.LISTA_PRECIOS.Frm_lista_clientes', '0000', '60', '0100', '001' UNION ALL
	--SELECT N'600100000', N'1', 602, N'Lista de Tiendas', 600, 2, 3, NULL, 1, N'MERCADERIA02.LISTA_PRECIOS.Frm_lista_tiendas', '0000', '60', '0100', '001' UNION ALL
	--SELECT N'600100000', N'1', 603, N'Lista de Precios', 600, 3, 3, NULL, 1, N'MERCADERIA02.LISTA_PRECIOS.Frm_lista_precios', '0000', '60', '0100', '001' UNION ALL
	--SELECT N'600100000', N'1', 604, N'Cargos', 600, 4, 3, NULL, 1, N'MERCADERIA02.ADMINISTRACION.Frm_tda_cargos', '0000', '60', '0100', '001' UNION ALL

    SELECT N'600100000', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600100000', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'MERCADERIA02.Frm_reporte_mov_balancestock', null, '60', '0100', '001' UNION ALL
	--SELECT N'600100000', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'MERCADERIA02.Frm_reporte_mov_docsemitido', null, '60', '0100', '001' UNION ALL
	--SELECT N'600100000', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'MERCADERIA02.Frm_reporte_productostock', null, '60', '0100', '001' UNION ALL
	SELECT N'600100000', N'1', 404, N'Pedidos Realizados', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_pedidos', null, '60', '0100', '001' 

	--SELECT N'600100000', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600100000', N'1', 513, N'Constantes Generales', 500,13, 3, NULL, 1, N'MERCADERIA02.PROCESOS.Form_ConstantesGenerales', null, '60', '0100', '001' UNION ALL
	--SELECT N'600100000', N'1', 514, N'Ajuste de Inventario', 500,14, 3, NULL, 1, N'MERCADERIA02.PROCESOS.Frm_ajuste_inventario', null, '60', '0100', '001' UNION ALL
	--SELECT N'600100000', N'1', 515, N'Reorganiza Costo-Ultimo', 500,15, 3, NULL, 1, N'MERCADERIA02.PROCESOS.Frm_Reorg_CostUlt', null, '60', '0100', '001' 	
    
    COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 5.....Done!', 10, 1) WITH NOWAIT;  



	/*** MODULO ALMACEN DE DISTRIBUCION  -- OPERADOR **/
	BEGIN TRANSACTION; 
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma] , [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
	SELECT N'600100001', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600100001', N'1', 202, N'Emitir Doc.Almacén', 200, 3, 1, NULL, 1, N'APT600100.Frm_movimiento', null, '60', '0100', '001' UNION ALL
	--SELECT N'600100001', N'1', 203, N'Emitir Comprobantes de Venta', 202, 1, 1, NULL, 1, N'APT600100.Frm_ventas', null, '60', '0100', '001' UNION ALL

	SELECT N'600100001', N'1', 300, N'Catálogo', 300, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600100001', N'1', 301, N'» Vendedores', 300, 1, 2, NULL, 1, N'APT600100.CATALOGO.Frm_vendedores', '0000', '60', '0100', '001' UNION ALL
	SELECT N'600100001', N'1', 302, N'» Canal Venta', 300, 2, 2, NULL, 1, N'APT600100.CATALOGO.Frm_canalvta', '0000', '60', '0100', '001' UNION ALL

	SELECT N'600100001', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600100001', N'1', 404, N'Pedidos Realizados', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_pedidos', null, '60', '0100', '001' 
    COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 5.....Done!', 10, 1) WITH NOWAIT;  



	/*** MODULO TIENDAS ADMINISTRADOR **/
	BEGIN TRANSACTION; 
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma] , [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600200000', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600200000', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', null, '60', '0200', '001' UNION ALL
    SELECT N'600200000', N'1', 102, N'Motivo Internos', 100, 9, 2, NULL, 1, N'Generales.Frm_mottrasladoint', null, '60', '0200', '001' UNION ALL    
    SELECT N'600200000', N'1', 104, N'Tipo de cambio',100, 9, 2, NULL, 1, N'Generales.Frm_tipocambio', null, '60', '0200', '001' UNION ALL    
    SELECT N'600200000', N'1', 109, N'Cond. de Pago', 100, 9, 2, NULL, 1, N'Generales.Frm_condpago', null, '60', '0200', '001' UNION ALL    
    SELECT N'600200000', N'1', 114, N'Unidad de Medida', 100, 14, 2, NULL, 1, N'Generales.Frm_UndMedida', null, '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 115, N'Equivalencia', 100, 15, 2, NULL, 1, N'Generales.Frm_Equivalencia', null, '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 116, N'Recepciones de O/C', 100, 16, 2, NULL, 1, N'Generales.Frm_RecepcionOC', null, '60', '0200', '001' UNION ALL
		
    SELECT N'600200000', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600200000', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600200000', N'1', 204, N'Emitir Comprobantes de Venta', 200, 1, 1, NULL, 1, N'D60Tienda.Frm_ventas', null, '60', '0200', '001' UNION ALL
	
	SELECT N'600200000', N'1', 300, N'Catálogo', 300, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600200000', N'1', 301, N'» Colores', 300, 1, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_color', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 302, N'» Estructura', 300, 2, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_estructura', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 303, N'» Linea', 300, 3, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_linea', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 304, N'» Marca', 300, 4, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_marca', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 305, N'» Modelo', 300, 5, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_modelo', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 306, N'» Producto', 300, 6, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_producto', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 307, N'» Proveedor', 300, 7, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_grupo', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 308, N'» Categoria', 300, 8, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_categoria', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 309, N'» Genero', 300, 9, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_genero', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 310, N'» Parte', 300, 10, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_parte', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 311, N'» Botapie', 300, 11, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_botapie', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 312, N'» Entalle', 300, 12, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_entalle', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 313, N'» Colección', 300, 13, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_coleccion', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 314, N'» Tejido', 300, 14, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_tejido', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 315, N'» Temporada', 300, 15, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_temporada', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 316, N'» Talla', 300, 16, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_talla', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 317, N'» Situacion', 300, 17, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_estado', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 318, N'» Sub-Coleccion', 300, 18, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_subcoleccion', '0000', '60', '0200', '001' UNION ALL
	--SELECT N'600200000', N'1', 319, N'» Familia-Tela', 300, 19, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_familiatelas', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 320, N'» Familia de Materiales', 300, 20, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_familiateladet', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 321, N'» Articulo', 300, 21, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_articulo', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 322, N'» Asignacion de Colores', 300, 22, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_articulo_color', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 323, N'» Tarjetas', 300, 23, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_tarjeta', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 324, N'» Grupo Tarjetas', 300, 24, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_tarjgrupo', '0000', '60', '0200', '001' UNION ALL
	--SELECT N'600200000', N'1', 325, N'» Vendedores', 300, 25, 2, NULL, 1, N'D60Tienda.CATALOGO.Frm_vendedores', '0000', '60', '0200', '001' UNION ALL	
	SELECT N'600200000', N'1', 326, N'» Categoría Planilla', 300, 26, 2, NULL, 1, N'D60Tienda.Catalogo.Frm_catplanilla', '0000', '60', '0200', '001' UNION ALL
	
	
	SELECT N'600200000', N'1', 600, N'Administración', 600, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600200000', N'1', 601, N'Lista de Clientes', 600, 1, 3, NULL, 1, N'D60Tienda.LISTA_PRECIOS.Frm_lista_clientes', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 602, N'Lista de Tiendas', 600, 2, 3, NULL, 1, N'D60Tienda.LISTA_PRECIOS.Frm_lista_tiendas', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 603, N'Lista de Precios', 600, 3, 3, NULL, 1, N'D60Tienda.LISTA_PRECIOS.Frm_lista_precios', '0000', '60', '0200', '001' UNION ALL	
	SELECT N'600200000', N'1', 604, N'Vendedores', 600, 4, 3, NULL, 1, N'D60Tienda.Administracion.Frm_vendedor', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 605, N'Cargos', 600, 5, 3, NULL, 1, N'D60Tienda.Administracion.Frm_cargos', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 606, N'Cuotas de Tiendas', 600, 4, 3, NULL, 1, N'D60Tienda.Administracion.Frm_cuota_tienda', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 607, N'Cuotas de Tiendas x Cargo', 600, 7, 3, NULL, 1, N'D60Tienda.Administracion.Frm_cuota_tiendacargo', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 608, N'Promociones', 600, 8, 3, NULL, 1, N'D60Tienda.LISTA_PRECIOS.Frm_promociones', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 609, N'Grupo Promociones', 600, 9, 3, NULL, 1, N'D60Tienda.LISTA_PRECIOS.Frm_grupo_promociones', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 610, N'Rango Comisiones', 600, 10, 3, NULL, 1, N'D60Tienda.Administracion.Frm_rango_comision', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 611, N'Planilla Comision', 600, 11, 3, NULL, 1, N'D60Tienda.Administracion.Frm_planilla_comision', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 612, N'Plantilla Asistencias', 600, 12, 3, NULL, 1, N'D60Tienda.Administracion.Frm_asistquin_planilla', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 613, N'Planilla Comision Mensual', 600, 13, 3, NULL, 1, N'D60Tienda.Administracion.Frm_planilla_comision_mensual', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 614, N'Proyecciónes', 600, 14, 3, NULL, 1, N'D60Tienda.Administracion.Frm_proyeccion', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 615, N'Orden de Producción', 600, 15, 3, NULL, 1, N'D60Tienda.Administracion.Frm_orden_produccion', '0000', '60', '0200', '001' UNION ALL

    SELECT N'600200000', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600200000', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'MERCADERIA02.Frm_reporte_mov_balancestock', null, '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'MERCADERIA02.Frm_reporte_mov_docsemitido', null, '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'MERCADERIA02.Frm_reporte_productostock', null, '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'MERCADERIA02.Frm_reporte_rollostock', null, '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'MERCADERIA02.Frm_reporte_productokardex_tela', null, '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'MERCADERIA02.Frm_reporte_rollokardex', null, '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'MERCADERIA02.Frm_reporte_mov_ordprod', null, '60', '0200', '001' UNION ALL
  --SELECT N'600200000', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'MERCADERIA02.Frm_reporte_rollocodbar', null, '60', '0200', '001' UNION ALL
    SELECT N'600200000', N'1', 410, N'Ordenes Pendientes', 400, 10, 1, NULL, 1, N'DL0Logistica.Frm_reporte_ordcompra', null, '60', '0200', '001' UNION ALL	
    SELECT N'600200000', N'1', 411, N'Requerimiento de  O/C', 400, 11, 1, NULL, 1, N'MERCADERIA02.REPORTES.Frm_RequerimientoOC', null, '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 412, N'Consumos de Articulos', 400, 12, 1, NULL, 1, N'MERCADERIA02.Frm_reporte_consumo', null, '60', '0200', '001' UNION ALL
			
    SELECT N'600200000', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600200000', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'MERCADERIA02.PROCESOS.Frm_reorganiza_perimes', null, '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'MERCADERIA02.PROCESOS.Frm_cierre_perimes', null, '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'MERCADERIA02.PROCESOS.Frm_reorganiza_historico', null, '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'MERCADERIA02.PROCESOS.Frm_cierre_perimes_inioper', null, '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 513, N'Constantes Generales', 500,13, 3, NULL, 1, N'MERCADERIA02.PROCESOS.Form_ConstantesGenerales', null, '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 514, N'Ajuste de Inventario', 500,14, 3, NULL, 1, N'MERCADERIA02.PROCESOS.Frm_ajuste_inventario', null, '60', '0200', '001' UNION ALL
	SELECT N'600200000', N'1', 515, N'Reorganiza Costo-Ultimo', 500,15, 3, NULL, 1, N'MERCADERIA02.PROCESOS.Frm_Reorg_CostUlt', null, '60', '0200', '001' 	
    
    COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 5.....Done!', 10, 1) WITH NOWAIT;  


	/*** MODULO TIENDAS OPERADOR **/
	BEGIN TRANSACTION; 
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma] , [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600200001', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600200001', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', null, '60', '0200', '001' UNION ALL	
	SELECT N'600200001', N'1', 300, N'Catálogo', 300, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL  
	SELECT N'600200001', N'1', 320, N'» Familia de Materiales', 300, 20, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_familiateladet', '1000', '60', '0200', '001' UNION ALL
	SELECT N'600200001', N'1', 321, N'» Articulo', 300, 21, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_articulo', '1000', '60', '0200', '001' UNION ALL
	SELECT N'600200001', N'1', 322, N'» Asignacion de Colores', 300, 22, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_articulo_color', '1000', '60', '0200', '001' UNION ALL
	SELECT N'600200001', N'1', 323, N'» Tarjetas', 300, 23, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_tarjeta', '1000', '60', '0200', '001' UNION ALL
	SELECT N'600200001', N'1', 324, N'» Grupo Tarjetas', 300, 24, 2, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_tarjgrupo', '1000', '60', '0200', '001' UNION ALL	
	SELECT N'600200001', N'1', 326, N'» Categoría Planilla', 300, 26, 2, NULL, 1, N'D60Tienda.Catalogo.Frm_catplanilla', '1000', '60', '0200', '001' UNION ALL		
	SELECT N'600200001', N'1', 600, N'Administración', 600, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600200001', N'1', 614, N'Proyecciónes', 600, 14, 3, NULL, 1, N'D60Tienda.Administracion.Frm_proyeccion', '0000', '60', '0200', '001' UNION ALL
	SELECT N'600200001', N'1', 615, N'Orden de Producción', 600, 15, 3, NULL, 1, N'D60Tienda.Administracion.Frm_orden_produccion', '1000', '60', '0200', '001' UNION ALL
    SELECT N'600200001', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600200001', N'1', 412, N'Consumos de Articulos', 400, 12, 1, NULL, 1, N'MERCADERIA02.Frm_reporte_consumo', null, '60', '0200', '001' UNION ALL			
    SELECT N'600200001', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600200001', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'MERCADERIA02.PROCESOS.Frm_reorganiza_perimes', null, '60', '0200', '001' UNION ALL
    SELECT N'600200001', N'1', 514, N'Ajuste de Inventario', 500,14, 3, NULL, 1, N'MERCADERIA02.PROCESOS.Frm_ajuste_inventario', null, '60', '0200', '001' UNION ALL
	SELECT N'600200001', N'1', 515, N'Reorganiza Costo-Ultimo', 500,15, 3, NULL, 1, N'MERCADERIA02.PROCESOS.Frm_Reorg_CostUlt', null, '60', '0200', '001' 	
    
    COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 5.....Done!', 10, 1) WITH NOWAIT;  













    
    /*** MODULO ALMACENES  TELAS ADMINISTRADOR **/
	BEGIN TRANSACTION; /*** PLATAFORMA DESKTOP ***/
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma] , [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600320000', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600320000', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', null, '60', '0320', '001' UNION ALL
    SELECT N'600320000', N'1', 102, N'Motivo Internos', 100, 9, 2, NULL, 1, N'Generales.Frm_mottrasladoint', null, '60', '0320', '001' UNION ALL
    --SELECT N'600320000', N'1', 103, N'Centro costo', 100, 9, 2, NULL, 1, N'Generales.Frm_centrocostos', null, '60', '0320', '001' UNION ALL
    SELECT N'600320000', N'1', 104, N'Tipo de cambio',100, 9, 2, NULL, 1, N'Generales.Frm_tipocambio', null, '60', '0320', '001' UNION ALL
    --SELECT N'600320000', N'1', 105, N'Sys Dominio', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_dominio', null, '60', '0320', '001' UNION ALL
    --SELECT N'600320000', N'1', 106, N'Sys Módulo', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_modulo', null, '60', '0320', '001' UNION ALL
    --SELECT N'600320000', N'1', 107, N'Sys Local', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_local', null, '60', '0320', '001' UNION ALL
    SELECT N'600320000', N'1', 108, N'Tipos de Documentos', 100, 9, 2, NULL, 1, N'Generales.Frm_modulo_local_tipodoc', null, '60', '0320', '001' UNION ALL
    SELECT N'600320000', N'1', 109, N'Cond. de Pago', 100, 9, 2, NULL, 1, N'Generales.Frm_condpago', null, '60', '0320', '001' UNION ALL
    --SELECT N'600320000', N'1', 110, N'Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_usuarios', null, '60', '0320', '001' UNION ALL
    --SELECT N'600320000', N'1', 111, N'Adm. Usuarios x perfil x local',100, 9, 2, NULL, 1, N'Generales.Frm_usuarios_perfil_local', null, '60', '0320', '001' UNION ALL
	--SELECT N'600320000', N'1', 112, N'Panel de Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_usuarios_panel', null, '60', '0320', '001' UNION ALL
    --SELECT N'600320000', N'1', 113, N'Menú de Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_perfilitems', null, '60', '0320', '001' UNION ALL
    SELECT N'600320000', N'1', 114, N'Unidad de Medida', 100, 14, 2, NULL, 1, N'Generales.Frm_UndMedida', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 115, N'Equivalencia', 100, 15, 2, NULL, 1, N'Generales.Frm_Equivalencia', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 116, N'Recepciones de O/C', 100, 16, 2, NULL, 1, N'Generales.Frm_RecepcionOC', null, '60', '0320', '001' UNION ALL
	
	
    SELECT N'600320000', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600320000', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600320000', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 205, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', null, '60', '0320', '001' UNION ALL
    --SELECT N'600320000', N'1', 206, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra', '00000', null, null, null UNION ALL
	
	SELECT N'600320000', N'1', 300, N'Catálogo', 300, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
 --   SELECT N'600320000', N'1', 301, N'Colores', 300, 1, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_color', null, '60', '0320', '001' UNION ALL
	--SELECT N'600320000', N'1', 302, N'Estructura', 300, 2, 2, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_estructura', null, '60', '0320', '001' UNION ALL
	--SELECT N'600320000', N'1', 303, N'Lineas', 300, 3, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_linea', null, '60', '0320', '001' UNION ALL
	--SELECT N'600320000', N'1', 304, N'Proveedores', 300, 4, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_grupo', null, '60', '0320', '001' UNION ALL
	--SELECT N'600320000', N'1', 305, N'Artículos', 300, 5, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_subgrupo', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 306, N'Producto', 300, 6, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_producto', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 307, N'Digitacion Inventariado', 300, 7, 2, NULL, 1, N'D60ALMACEN.Frm_digitacion_inv_rollo', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 308, N'Marca x SubGrupo', 300, 8, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_MarcaSubgrupo', null, '60', '0320', '001' UNION ALL
	
    SELECT N'600320000', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600320000', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'DL0Logistica.Frm_reporte_productostock', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', null, '60', '0320', '001' UNION ALL
    --SELECT N'600320000', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', null, '60', '0320', '001' UNION ALL
    SELECT N'600320000', N'1', 410, N'Ordenes Pendientes', 400, 10, 1, NULL, 1, N'DL0Logistica.Frm_reporte_ordcompra', null, '60', '0320', '001' UNION ALL	
    SELECT N'600320000', N'1', 411, N'Requerimiento de  O/C', 400, 11, 1, NULL, 1, N'D60ALMACEN.REPORTES.Frm_RequerimientoOC', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 412, N'Consumos de Articulos', 400, 12, 1, NULL, 1, N'D60ALMACEN.Frm_reporte_consumo', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 413, N'Conciliación de Inventarios', 400, 13, 1, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInvRollos', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 414, N'Ubigeo de Prod x Inventarios', 400, 14, 1, NULL, 1, N'D60ALMACEN.Frm_reporte_UbigeoInvRollos', null, '60', '0320', '001' UNION ALL
	
	
	
    SELECT N'600320000', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600320000', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_perimes', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_historico', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes_inioper', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 513, N'Constantes Generales', 500,13, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Form_ConstantesGenerales', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 514, N'Ajuste de Inventario', 500,14, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_ajuste_inventario', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 515, N'Genera Archivo Trabajo', 500, 15, 2, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_GeneraArchivoWork_rollo', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 516, N'Genera Nuevo Codigo Producto', 500, 16, 2, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_ajuste_codigo', null, '60', '0320', '001' UNION ALL
	SELECT N'600320000', N'1', 517, N'Reorganiza Costo-Ultimo', 500,17, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_Reorg_CostUlt', null, '60', '0320', '001' 	
    
    COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 5.....Done!', 10, 1) WITH NOWAIT;    



	/*** MODULO ALMACENES  TELAS OPERADOR **/
	BEGIN TRANSACTION; 
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma] , [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600320001', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600320001', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', '10000', '60', '0320', '001' UNION ALL
    SELECT N'600320001', N'1', 102, N'Motivo Internos', 100, 9, 2, NULL, 1, N'Generales.Frm_mottrasladoint', '10000', '60', '0320', '001' UNION ALL
    SELECT N'600320001', N'1', 108, N'Tipos de Documentos', 100, 9, 2, NULL, 1, N'Generales.Frm_modulo_local_tipodoc', '10000', '60', '0320', '001' UNION ALL

    SELECT N'600320001', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600320001', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', '00000', '60', '0320', '001' UNION ALL
	SELECT N'600320001', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600320001', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', '10000', '60', '0320', '001' UNION ALL
	SELECT N'600320001', N'1', 205, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', '20000', '60', '0320', '001' UNION ALL
    --SELECT N'600320001', N'1', 206, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra','20000', null, null, null UNION ALL
	
	SELECT N'600320001', N'1', 300, N'Catálogo', 300, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
 --   SELECT N'600320001', N'1', 301, N'Colores', 300, 1, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_color', '10000', '60', '0320', '001' UNION ALL
	--SELECT N'600320001', N'1', 302, N'Estructura', 300, 2, 2, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_estructura', '10000', '60', '0320', '001' UNION ALL
	--SELECT N'600320001', N'1', 303, N'Lineas', 300, 3, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_linea', '30000', '60', '0320', '001' UNION ALL
	--SELECT N'600320001', N'1', 304, N'Proveedores', 300, 4, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_grupo', '30000', '60', '0320', '001' UNION ALL
	--SELECT N'600320001', N'1', 305, N'Artículos', 300, 5, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_subgrupo', '30000', '60', '0320', '001' UNION ALL
	SELECT N'600320001', N'1', 306, N'Producto', 300, 6, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_producto', '30000', '60', '0320', '001' UNION ALL
	SELECT N'600320001', N'1', 307, N'Digitacion Inventariado', 300, 7, 2, NULL, 1, N'D60ALMACEN.Frm_digitacion_inv_rollo', '10000', '60', '0320', '001' UNION ALL
	SELECT N'600320001', N'1', 308, N'Marca x SubGrupo', 300, 8, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_MarcaSubgrupo', null, '60', '0320', '001' UNION ALL
	
    SELECT N'600320001', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600320001', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', null, '60', '0320', '001' UNION ALL
	SELECT N'600320001', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', null, '60', '0320', '001' UNION ALL
	SELECT N'600320001', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'DL0Logistica.Frm_reporte_productostock', null, '60', '0320', '001' UNION ALL
	SELECT N'600320001', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', null, '60', '0320', '001' UNION ALL
	SELECT N'600320001', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', null, '60', '0320', '001' UNION ALL
	SELECT N'600320001', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', null, '60', '0320', '001' UNION ALL
	SELECT N'600320001', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', null, '60', '0320', '001' UNION ALL
    --SELECT N'600320001', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', null, '60', '0320', '001' UNION ALL
    SELECT N'600320001', N'1', 410, N'Ordenes Pendientes', 400, 10, 1, NULL, 1, N'DL0Logistica.Frm_reporte_ordcompra', null, '60', '0320', '001' UNION ALL	
    SELECT N'600320001', N'1', 411, N'Requerimiento de  O/C', 400, 11, 1, NULL, 1, N'D60ALMACEN.REPORTES.Frm_RequerimientoOC', null, '60', '0320', '001' UNION ALL
	SELECT N'600320001', N'1', 412, N'Consumos de Articulos', 400, 12, 1, NULL, 1, N'D60ALMACEN.Frm_reporte_consumo', null, '60', '0320', '001' UNION ALL
	SELECT N'600320001', N'1', 413, N'Conciliación de Inventarios', 400, 13, 1, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInvRollos', null, '60', '0320', '001' UNION ALL	
	SELECT N'600320001', N'1', 414, N'Ubigeo de Prod x Inventarios', 400, 14, 1, NULL, 1, N'D60ALMACEN.Frm_reporte_UbigeoInvRollos', null, '60', '0320', '001' UNION ALL
	SELECT N'600320001', N'1', 415, N'Listar Ordenes Pendientes', 400, 15, 1, NULL, 1, N'DL0Logistica.Frm_reporte_ordcompra', NULL,'60','0320','001'  UNION ALL
	
    SELECT N'600320001', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600320001', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_perimes', '10000', '60', '0320', '001' UNION ALL
	SELECT N'600320001', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes', '10000', '60', '0320', '001' UNION ALL
	SELECT N'600320001', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_historico', '10000', '60', '0320', '001' UNION ALL
	SELECT N'600320001', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes_inioper', '10000', '60', '0320', '001' UNION ALL
	--SELECT N'600320001', N'1', 515, N'Genera Archivo Trabajo', 500, 15, 2, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_GeneraArchivoWork_rollo', '10000', '60', '0320', '001' UNION ALL
	SELECT N'600320001', N'1', 516, N'Reorganiza Costo-Ultimo', 500,16, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_Reorg_CostUlt', '10000', '60', '0320', '001' 	
    COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 5.....Done!', 10, 1) WITH NOWAIT;



	/*** MODULO ALMACENES  TELAS CONSULTAS **/
	BEGIN TRANSACTION; 
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma] , [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
	SELECT N'600320002', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600320002', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', '10000', '60', '0330', '001' UNION ALL

    SELECT N'600320002', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600320002', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', null, '60', '0320', '001' UNION ALL
	SELECT N'600320002', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', null, '60', '0320', '001' UNION ALL
	SELECT N'600320002', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'DL0Logistica.Frm_reporte_productostock', null, '60', '0320', '001' UNION ALL
	SELECT N'600320002', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', null, '60', '0320', '001' UNION ALL
	SELECT N'600320002', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', null, '60', '0320', '001' UNION ALL
	SELECT N'600320002', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', null, '60', '0320', '001' UNION ALL
	SELECT N'600320002', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', null, '60', '0320', '001' UNION ALL
    SELECT N'600320002', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', null, '60', '0320', '001' UNION ALL
    SELECT N'600320002', N'1', 410, N'Ordenes Pendientes', 400, 10, 1, NULL, 1, N'DL0Logistica.Frm_reporte_ordcompra', null, '60', '0320', '001'	
	
 --   SELECT N'600320002', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600320002', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reorganiza_perimes', null, '60', '0320', '001' UNION ALL
	--SELECT N'600320002', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.Frm_cierre_perimes', null, '60', '0320', '001' UNION ALL
	--SELECT N'600320002', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.Frm_reorganiza_historico', null, '60', '0320', '001' UNION ALL
	--SELECT N'600320002', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.Frm_cierre_perimes_inioper', null, '60', '0320', '001'
    COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 5.....Done!', 10, 1) WITH NOWAIT;



	/*** MODULO ALMACENES  INSUMOS ADMINISTRADOR **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma] , [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600330000', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600330000', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', null, '60', '0330', '001' UNION ALL
    SELECT N'600330000', N'1', 102, N'Motivo Internos', 100, 9, 2, NULL, 1, N'Generales.Frm_mottrasladoint', null, '60', '0330', '001' UNION ALL    
    SELECT N'600330000', N'1', 104, N'Tipo de cambio',100, 9, 2, NULL, 1, N'Generales.Frm_tipocambio', null, '60', '0330', '001' UNION ALL    
    SELECT N'600330000', N'1', 108, N'Tipos de Documentos', 100, 9, 2, NULL, 1, N'Generales.Frm_modulo_local_tipodoc', null, '60', '0330', '001' UNION ALL
    SELECT N'600330000', N'1', 109, N'Cond. de Pago', 100, 9, 2, NULL, 1, N'Generales.Frm_condpago', null, '60', '0330', '001' UNION ALL  	
	SELECT N'600330000', N'1', 114, N'Unidad de Medida', 100, 14, 2, NULL, 1, N'Generales.Frm_UndMedida', null, '60', '0330', '001' UNION ALL
	SELECT N'600330000', N'1', 115, N'Equivalencia', 100, 15, 2, NULL, 1, N'Generales.Frm_Equivalencia', null, '60', '0330', '001' UNION ALL
	SELECT N'600330000', N'1', 116, N'Recepciones de O/C', 100, 16, 2, NULL, 1, N'Generales.Frm_RecepcionOC', null, '60', '0330', '001' UNION ALL
    
	SELECT N'600330000', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600330000', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', null, '60', '0330', '001' UNION ALL
	SELECT N'600330000', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600330000', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', null, '60', '0330', '001' UNION ALL
	SELECT N'600330000', N'1', 205, N'Digitacion Inventariado', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_digitacion_inv', null, '60', '0330', '001' UNION ALL
	
	-- SELECT N'600330000', N'1', 206, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', null, '60', '0330', '001' UNION ALL
    -- SELECT N'600330000', N'1', 207, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra', '00000', null, null, null UNION ALL	
		
    SELECT N'600330000', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600330000', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', null, '60', '0330', '001' UNION ALL
	SELECT N'600330000', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', null, '60', '0330', '001' UNION ALL
	SELECT N'600330000', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'DL0Logistica.Frm_reporte_productostock', null, '60', '0330', '001' UNION ALL
	--SELECT N'600330000', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', null, '60', '0330', '001' UNION ALL
	SELECT N'600330000', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', null, '60', '0330', '001' UNION ALL
	--SELECT N'600330000', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', null, '60', '0330', '001' UNION ALL
	SELECT N'600330000', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', null, '60', '0330', '001' UNION ALL
	SELECT N'600330000', N'1', 408, N'Toma de Inventario', 400, 8, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_TomaInventario', null, '60', '0330', '001' UNION ALL
	SELECT N'600330000', N'1', 409, N'Diferencia de Inventarios', 400, 9, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInv', null, '60', '0330', '001' UNION ALL
    --SELECT N'600330000', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', null, '60', '0330', '001' UNION ALL	
	SELECT N'600330000', N'1', 410, N'Ordenes Pendientes', 400, 10, 1, NULL, 1, N'DL0Logistica.Frm_reporte_ordcompra', null, '60', '0330', '001' UNION ALL	
	SELECT N'600330000', N'1', 411, N'Requerimiento de  O/C', 400, 11, 1, NULL, 1, N'D60ALMACEN.REPORTES.Frm_RequerimientoOC', null, '60', '0330', '001' UNION ALL
	--SELECT N'600330000', N'1', 412, N'PersonalCencos', 400, 12, 1, NULL, 1, N'D60ALMACEN.Frm_personal_cencos', null, '60', '0330', '001' UNION ALL

    SELECT N'600330000', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600330000', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_perimes', null, '60', '0330', '001' UNION ALL
	SELECT N'600330000', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes', null, '60', '0330', '001' UNION ALL
	SELECT N'600330000', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_historico', null, '60', '0330', '001' UNION ALL
	SELECT N'600330000', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes_inioper', null, '60', '0330', '001' UNION ALL
	SELECT N'600330000', N'1', 513, N'Constantes Generales', 500,13, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Form_ConstantesGenerales', null, '60', '0330', '001' UNION ALL
	SELECT N'600330000', N'1', 514, N'Ajuste de Inventario', 500,14, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_ajuste_inventario', null, '60', '0330', '001' UNION ALL
	SELECT N'600330000', N'1', 515, N'Generar Archivo Trabajo', 500, 15, 3, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_GeneraArchivoWork', null, '60', '0330', '001' UNION ALL
	SELECT N'600330000', N'1', 516, N'Reorganiza Costo-Ultimo', 500, 16, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_Reorg_CostUlt', null, '60', '0330', '001' 	
    COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 5.....Done!', 10, 1) WITH NOWAIT;    

	/*** MODULO ALMACENES  INSUMOS OPERADOR **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600330001', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600330001', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', '10000', '60', '0330', '001' UNION ALL
    SELECT N'600330001', N'1', 102, N'Motivo Internos', 100, 9, 2, NULL, 1, N'Generales.Frm_mottrasladoint', '10000', '60', '0330', '001' UNION ALL
    --SELECT N'600330001', N'1', 103, N'Centro costo', 100, 9, 2, NULL, 1, N'Generales.Frm_centrocostos', '10000', '60', '0330', '001' UNION ALL
    SELECT N'600330001', N'1', 104, N'Tipo de cambio',100, 9, 2, NULL, 1, N'Generales.Frm_tipocambio', '10000', '60', '0330', '001' UNION ALL   
	
    SELECT N'600330001', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600330001', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', null, '60', '0330', '001' UNION ALL
	SELECT N'600330001', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600330001', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', '10000', '60', '0330', '001' UNION ALL
	SELECT N'600330001', N'1', 205, N'Digitacion Inventariado', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_digitacion_inv', '10000', '60', '0330', '001' UNION ALL
	--SELECT N'600330001', N'1', 206, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', null, '60', '0330', '001' UNION ALL
    --SELECT N'600330001', N'1', 207, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra', '00000', null, null, null UNION ALL
		
    SELECT N'600330001', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600330001', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', '10000', '60', '0330', '001' UNION ALL
	SELECT N'600330001', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', '10000', '60', '0330', '001' UNION ALL
	SELECT N'600330001', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'DL0Logistica.Frm_reporte_productostock', '10000', '60', '0330', '001' UNION ALL
	--SELECT N'600330001', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', '10000', '60', '0330', '001' UNION ALL
	SELECT N'600330001', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', '10000', '60', '0330', '001' UNION ALL
	--SELECT N'600330001', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', '10000', '60', '0330', '001' UNION ALL
	SELECT N'600330001', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', '10000', '60', '0330', '001' UNION ALL
	SELECT N'600330001', N'1', 408, N'Toma de Inventario', 400, 8, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_TomaInventario', '10000', '60', '0330', '001' UNION ALL
	SELECT N'600330001', N'1', 409, N'Diferencia de Inventarios', 400, 9, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInv', '10000', '60', '0330', '001' UNION ALL
    --SELECT N'600330001', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', '10000', '60', '0330', '001' UNION ALL
	SELECT N'600330001', N'1', 410, N'Ordenes Pendientes', 400, 10, 1, NULL, 1, N'DL0Logistica.Frm_reporte_ordcompra', '10000', '60', '0330', '001' UNION ALL
	SELECT N'600330001', N'1', 411, N'Requerimiento de  O/C', 400, 11, 1, NULL, 1, N'D60ALMACEN.REPORTES.Frm_RequerimientoOC', '10000', '60', '0330', '001' UNION ALL

	
    SELECT N'600330001', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600330001', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_perimes', '10000', '60', '0330', '001' UNION ALL
	SELECT N'600330001', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes', '10000', '60', '0330', '001' UNION ALL
	SELECT N'600330001', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_historico', '10000', '60', '0330', '001' UNION ALL
	SELECT N'600330001', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes_inioper', '10000', '60', '0330', '001' UNION ALL
	SELECT N'600330001', N'1', 513, N'Constantes Generales', 500,13, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Form_ConstantesGenerales', '10000', '60', '0330', '001' UNION ALL
	SELECT N'600330001', N'1', 514, N'Ajuste de Inventario', 500,14, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_ajuste_inventario', '10000', '60', '0330', '001'	UNION ALL
	SELECT N'600330001', N'1', 515, N'Generar Archivo Trabajo', 500, 15, 3, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_GeneraArchivoWork', '10000', '60', '0330', '001' UNION ALL
	SELECT N'600330001', N'1', 516, N'Reorganiza Costo-Ultimo', 500,16, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_Reorg_CostUlt', '10000', '60', '0330', '001' 
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 7.....Done!', 10, 1) WITH NOWAIT;
	

	/*** MODULO ALMACENES  INSUMOS CONSULTAR **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
   
    SELECT N'600330003', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600330003', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', '10000', '60', '0330', '001' UNION ALL

    SELECT N'600330003', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600330003', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', '10000', '60', '0330', '001' UNION ALL
	SELECT N'600330003', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', '10000', '60', '0330', '001' UNION ALL
	SELECT N'600330003', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'DL0Logistica.Frm_reporte_productostock', '10000', '60', '0330', '001' UNION ALL
	--SELECT N'600330001', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', '10000', '60', '0330', '001' UNION ALL
	SELECT N'600330003', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', '10000', '60', '0330', '001' UNION ALL
	--SELECT N'600330001', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', '10000', '60', '0330', '001' UNION ALL
	SELECT N'600330003', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', '10000', '60', '0330', '001' UNION ALL
	SELECT N'600330003', N'1', 408, N'Toma de Inventario', 400, 8, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_TomaInventario', '10000', '60', '0330', '001' UNION ALL
	SELECT N'600330003', N'1', 409, N'Diferencia de Inventarios', 400, 9, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInv', '10000', '60', '0330', '001' --UNION ALL
    --SELECT N'600330001', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', '10000', '60', '0330', '001' UNION ALL
	
    COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 7.....Done!', 10, 1) WITH NOWAIT;



	-- PRODUCCION ADMINISTRADOR
	-----------------------------------------------------------------------------------------------------------------------------------------------
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc])
	SELECT N'600600000', N'1', 405, N'Listado Diferencias de Inventario', 402, 3, NULL, NULL, 1, N'D60ALMAC/0600AFIJO/af_inventario_listadodiferencias.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 406, N'Conformidad Toma de Inventario', 402, 4, NULL, NULL, 1, N'D60ALMAC/0600AFIJO/af_inventario_conformidad.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 407, N'Cierre de Período', 400, 3, NULL, NULL, 1, N'D60ALMAC/0600AFIJO/af_local_reorganizacion.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 408, N'Reorganización de Histórico', 400, 4, NULL, NULL, 1, N'D60ALMAC/0600AFIJO/af_local_reorganizacion.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 500, N'Utilitarios', 500, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 501, N'Borrado de Tablas', 500, 1, NULL, NULL, 1, N'D60ALMAC/0600AFIJO/af_util_borratablas.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 502, N'Copia de Tablas', 500, 2, NULL, NULL, 1, N'D60ALMAC/0600AFIJO/af_util_copiatablas.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 503, N'Exportación de Tablas', 500, 3, NULL, NULL, 1, N'D60ALMAC/0600AFIJO/af_util_exportatablas.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 504, N'Impresion de CodBar', 500, 4, NULL, NULL, 1, N'D60ALMAC/0600AFIJO/af_codigobarra.aspx', NULL UNION ALL
	
	SELECT N'700900000', N'1', 1, N'Archivos', 1, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'700900000', N'1', 2, N'Proveedor-Cliente', 1, 1, NULL, NULL, 1, N'Generales.Frm_clientesproveedores', NULL UNION ALL
	--SELECT N'700900000', N'1', 3, N'Nuevo Pedido', 2, 1, NULL, NULL, 1, N'D20COMER/0200PEDID/pedido_registrar.aspx', NULL UNION ALL
	--SELECT N'700900000', N'1', 4, N'Modificar Pedido', 2, 2, NULL, NULL, 1, N'D20COMER/0200PEDID/pedido_modificar.aspx', '00000' UNION ALL
	SELECT N'700900000', N'1', 4, N'Orden de Produccion', 1, 4, NULL, NULL, 1, N'D70Produccion.Frm_orden_produccion', '00000' UNION ALL
	SELECT N'700900000', N'1', 5, N'Req. de Produccion', 1, 5, NULL, NULL, 1, N'D70Produccion.Frm_req_produccion', '00000' UNION ALL
	SELECT N'700900000', N'1', 6, N'Crear Recetas ', 1, 6, NULL, NULL, 1, N'D70Produccion.Frm_recetas', '00000' UNION ALL
	SELECT N'700900000', N'1', 7, N'Explosion de Materiales', 1, 7, NULL, NULL, 1, N'D70Produccion.Frm_explosion_materiales', '00000' UNION ALL
	SELECT N'700900000', N'1', 8, N'Movimiento por Fase', 1, 8, NULL, NULL, 1, N'D70Produccion.Frm_movimiento_fase', '00000' UNION ALL
	SELECT N'700900000', N'1', 9, N'Orden de Servicio', 1, 9, NULL, NULL, 1, N'D70Produccion.Frm_orden_servicio', '00000' UNION ALL
	
	
	-- Frm_orden_produccion

	SELECT N'700900000', N'1', 10, N'Catálogo', 10, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'700900000', N'1', 11, N'Constantes Generales', 10, 1, NULL, NULL, 1, N'D00MAESTROS/constantesGenerales.aspx', NULL UNION ALL
	SELECT N'700900000', N'1', 12, N'Serie de Documentos', 10, 2, NULL, NULL, 1, N'CATALOGO/GENERAL/modulolocaltipdocseries.aspx', NULL UNION ALL
	SELECT N'700900000', N'1', 13, N'Fases', 10, 3, NULL, NULL, 1, N'D07PRODU/0100PRODU/pp_fase.aspx', NULL UNION ALL	
	SELECT N'700900000', N'1', 14, N'Parte Prenda', 10, 4, 2, NULL, 1, N'D70Produccion.Catalogo.Frm_parte_prenda', '00000' UNION ALL
	
	SELECT N'700900000', N'1', 15, N'Catalogación Telas', 10, 5, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'700900000', N'1', 16, N'Proveedores de Telas', 15, 1, NULL, NULL, 1, N'CATALOGO/D60ALMAC/mp_grupo.aspx', NULL UNION ALL
	SELECT N'700900000', N'1', 17, N'Línea de Telas', 15, 2, NULL, NULL, 1, N'CATALOGO/D60ALMAC/mp_linea.aspx', NULL UNION ALL
	SELECT N'700900000', N'1', 18, N'Artículo de Telas', 15, 3, NULL, NULL, 1, N'CATALOGO/D60ALMAC/mp_subgrupo.aspx', NULL UNION ALL
	SELECT N'700900000', N'1', 19, N'Tallas', 10, 6, NULL, NULL, 1, N'CATALOGO/D20COMER/pt_talla.aspx', NULL UNION ALL
	SELECT N'700900000', N'1', 20, N'Colores', 10, 7, NULL, NULL, 1, N'CATALOGO/D20COMER/pt_color.aspx', NULL UNION ALL
	
	SELECT N'700900000', N'1', 21, N'Catalogación Prod Term', 10, 8, NULL, NULL, 1, N'main.aspx', NULL UNION ALL		
	SELECT N'700900000', N'1', 24, N'• Marcas', 21, 3, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_marca', '00000' UNION ALL
	SELECT N'700900000', N'1', 25, N'• Categorias', 21, 4, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_categoria', '00000' UNION ALL
	SELECT N'700900000', N'1', 26, N'• Generos', 21, 5, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_genero', '00000' UNION ALL
	SELECT N'700900000', N'1', 27, N'• Lineas', 21, 6, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_linea', '00000' UNION ALL
	SELECT N'700900000', N'1', 28, N'• Modelos', 21, 7, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_modelo', '00000' UNION ALL
	--SELECT N'700900000', N'1', 29, N'» Estructuras', 21, 8, NULL, NULL, 1, N'CATALOGO/D20COMER/pt_Estructura.aspx', '00000' UNION ALL
	SELECT N'700900000', N'1', 30, N'• Tejidos', 21, 9, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_tejido', '00000' UNION ALL
	--SELECT N'700900000', N'1', 31, N'Estaciones', 21, 10, NULL, NULL, 1, N'CATALOGO/D20COMER/pt_estacion.aspx', '00000' UNION ALL
	SELECT N'700900000', N'1', 32, N'• Temporada', 21, 11, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_temporada', '00000' UNION ALL
	SELECT N'700900000', N'1', 33, N'• Entalle', 21, 12, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_entalle', '00000' UNION ALL
	SELECT N'700900000', N'1', 34, N'• BotaPie', 21, 13, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_botapie', '00000' UNION ALL
	SELECT N'700900000', N'1', 35, N'• Articulos', 21, 14, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_articulo', '00000' UNION ALL
	--SELECT N'700900000', N'1', 36, N'» Asignacion de Colores', 10, 9, NULL, NULL, 1, N'CATALOGO/D20COMER/pt_articulocolor.aspx', NULL UNION ALL
	SELECT N'700900000', N'1', 37, N'• Colección', 21, 15, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_coleccion', '10000' UNION ALL
	SELECT N'700900000', N'1', 38, N'• Sub-Coleccion', 21, 16, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_subcoleccion', '10000' UNION ALL
	
	
	--SELECT N'700900000', N'1', 50, N'Listados', 50, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	----SELECT N'700900000', N'1', 51, N'Ordenes de Producción', 50, 1, NULL, NULL, 1, N'D70PRODU/0100PRODU/ordenprod_listado.aspx', NULL UNION ALL
	--SELECT N'700900000', N'1', 52, N'Kardex por Fase', 50, 2, NULL, NULL, 1, N'D70PRODU/0100PRODU/ordenprod_fases_kardex.aspx', NULL UNION ALL
	
	--SELECT N'700900000', N'1', 70, N'Procesos', 70, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	
	--SELECT N'700900000', N'1', 80, N'Utilitarios', 80, 0, NULL, NULL, 1, N'main.aspx', NULL	UNION ALL
	--SELECT N'700900000', N'1', 81, N'Impresion de CodBar', 80, 1, NULL, NULL, 1, N'D70PRODU/0100PRODU/pp_codigobarra.aspx', NULL UNION ALL
	--SELECT N'700900000', N'1', 82, N'Usuarios', 80, 2, NULL, NULL, 1, N'mdo_maestros/usuarios.aspx', NULL UNION ALL
	--SELECT N'700900000', N'1', 83, N'Perfiles', 80, 3, NULL, NULL, 1, N'mdo_maestros/perfil.aspx', NULL UNION ALL
	--SELECT N'700900000', N'1', 84, N'Perfil Items', 80, 4, NULL, NULL, 1, N'mdo_maestros/perfilitems.aspx', NULL UNION ALL
	
	SELECT N'700900000', N'1', 100, N'Costos', 100, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'700900000', N'1', 101, N'» Familia de Materiales', 100, 1, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_familiateladet',  '00000' UNION ALL	
	SELECT N'700900000', N'1', 102, N'» Constantes', 100, 2, NULL, NULL, 1, N'D70Produccion.Costos.Frm_constantes', '00000' UNION ALL	
	SELECT N'700900000', N'1', 103, N'» Rubros de Costos', 100, 3, NULL, NULL, 1, N'D70Produccion.Costos.Frm_rubrocosto', '00000' UNION ALL
	SELECT N'700900000', N'1', 104, N'» Hojas de Costo', 100, 4, NULL, NULL, 1, N'D70Produccion.Costos.Frm_hojacosto', '00000' UNION ALL
	
	SELECT N'700900000', N'1', 200, N'Udp', 200, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'700900000', N'1', 201, N'» Diseñador', 200, 1, NULL, NULL, 1, N'D70Produccion.UDP.Frm_diseñador', '00000' UNION ALL
	SELECT N'700900000', N'1', 202, N'» Variante', 200, 2, NULL, NULL, 1, N'D70Produccion.UDP.Frm_variante', '00000' UNION ALL	
	
	SELECT N'700900000', N'1', 300, N'Reportes', 300, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'700900000', N'1', 301, N'» Consultar Ord_Producción', 300, 1, NULL, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', '00000' UNION ALL
	SELECT N'700900000', N'1', 302, N'» Consultar Doc_Emitidos', 300, 2, NULL, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', '00000' UNION ALL
	SELECT N'700900000', N'1', 303, N'» Consultar Kardex x Articulo', 300, 3, NULL, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', '00000' UNION ALL
	SELECT N'700900000', N'1', 304, N'» Consultar Stock x Articulo', 300, 4, NULL, NULL, 1, N'DL0Logistica.Frm_reporte_productostock', '00000'  UNION ALL
	SELECT N'700900000', N'1', 305, N'» Consultar Expl_Materiales', 300, 5, NULL, NULL, 1, N'D70Produccion.Frm_reporte_explosion_material', '00000'  UNION ALL
	SELECT N'700900000', N'1', 306, N'» Consultar Req_Producción', 300, 6, NULL, NULL, 1, N'D70Produccion.Frm_reporte_req_produccion', '00000'

	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 8.....Done!', 10, 1) WITH NOWAIT;
	---------------------------------------------------------------------------------------------------------------------------------------------


	-- PRODUCCION OPERADOR
	---------------------------------------------------------------------------------------------------------------------------------------------
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc])
	SELECT N'700900001', N'1', 1, N'Archivos', 1, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'700900001', N'1', 2, N'Pedidos', 1, 1, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'700900001', N'1', 3, N'Nuevo Pedido', 2, 1, NULL, NULL, 1, N'D20COMER/0200PEDID/pedido_registrar.aspx', NULL UNION ALL
	--SELECT N'700900001', N'1', 4, N'Modificar Pedido', 2, 2, NULL, NULL, 1, N'D20COMER/0200PEDID/pedido_modificar.aspx', '10000' UNION ALL
	--SELECT N'700900001', N'1', 5, N'Consultar Pedido', 2, 3, NULL, NULL, 1, N'D20COMER/0200PEDID/pedido_consultar.aspx', '10000' UNION ALL
	SELECT N'700900001', N'1', 6, N'Orden de Produccion', 1, 2, NULL, NULL, 1, N'D60Tienda.Administracion.Frm_orden_produccion', '10000' UNION ALL
	
	SELECT N'700900001', N'1', 10, N'Catálogo', 10, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'700900001', N'1', 11, N'Constantes Generales', 10, 1, NULL, NULL, 1, N'D00MAESTROS/constantesGenerales.aspx', NULL UNION ALL
	SELECT N'700900001', N'1', 12, N'Serie de Documentos', 10, 2, NULL, NULL, 1, N'CATALOGO/GENERAL/modulolocaltipdocseries.aspx', NULL UNION ALL
	SELECT N'700900001', N'1', 13, N'Fases', 10, 3, NULL, NULL, 1, N'D07PRODU/0100PRODU/pp_fase.aspx', NULL UNION ALL
	SELECT N'700900001', N'1', 14, N'Clientes', 10, 4, NULL, NULL, 1, N'CATALOGO/GENERAL/cliente.aspx', NULL UNION ALL
	SELECT N'700900001', N'1', 15, N'Catalogación Telas', 10, 5, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'700900001', N'1', 16, N'Proveedores de Telas', 15, 1, NULL, NULL, 1, N'CATALOGO/D60ALMAC/mp_grupo.aspx', NULL UNION ALL
	SELECT N'700900001', N'1', 17, N'Línea de Telas', 15, 2, NULL, NULL, 1, N'CATALOGO/D60ALMAC/mp_linea.aspx', NULL UNION ALL
	SELECT N'700900001', N'1', 18, N'Artículo de Telas', 15, 3, NULL, NULL, 1, N'CATALOGO/D60ALMAC/mp_subgrupo.aspx', NULL UNION ALL
	SELECT N'700900001', N'1', 19, N'Tallas', 10, 6, NULL, NULL, 1, N'CATALOGO/D20COMER/pt_talla.aspx', NULL UNION ALL
	SELECT N'700900001', N'1', 20, N'Colores', 10, 7, NULL, NULL, 1, N'CATALOGO/D20COMER/pt_color.aspx', NULL UNION ALL
	
	SELECT N'700900001', N'1', 21, N'Catalogación Prod Term', 10, 8, NULL, NULL, 1, N'main.aspx', NULL UNION ALL	
	--SELECT N'700900001', N'1', 22, N'» Proveedores', 21, 1, NULL, NULL, 1, N'CATALOGO/D20COMER/pt_grupo.aspx', NULL UNION ALL
	--SELECT N'700900001', N'1', 23, N'» Estado/Situación', 21, 2, NULL, NULL, 1, N'CATALOGO/D20COMER/pt_estado.aspx', NULL UNION ALL
	SELECT N'700900001', N'1', 24, N'» Marcas', 21, 3, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_marca', '10000' UNION ALL
	SELECT N'700900001', N'1', 25, N'» Categorias', 21, 4, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_categoria', '10000' UNION ALL
	SELECT N'700900001', N'1', 26, N'» Generos', 21, 5, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_genero', '10000' UNION ALL
	SELECT N'700900001', N'1', 27, N'» Lineas', 21, 6, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_linea', '10000' UNION ALL
	SELECT N'700900001', N'1', 28, N'» Modelos', 21, 7, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_modelo', '10000' UNION ALL
	--SELECT N'700900001', N'1', 29, N'» Estructuras', 21, 8, NULL, NULL, 1, N'CATALOGO/D20COMER/pt_Estructura.aspx', '10000' UNION ALL
	SELECT N'700900001', N'1', 30, N'» Tejidos', 21, 9, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_tejido', '10000' UNION ALL
	--SELECT N'700900001', N'1', 31, N'» Estaciones', 21, 10, NULL, NULL, 1, N'CATALOGO/D20COMER/pt_estacion.aspx', '10000' UNION ALL
	SELECT N'700900001', N'1', 32, N'» Temporada', 21, 11, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_temporada', '10000' UNION ALL
	SELECT N'700900001', N'1', 33, N'» Entalle', 21, 12, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_entalle', '10000' UNION ALL
	SELECT N'700900001', N'1', 34, N'» BotaPie', 21, 13, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_botapie', '10000' UNION ALL
	SELECT N'700900001', N'1', 35, N'» Articulos', 21, 14, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_articulo', '10000' UNION ALL
	--SELECT N'700900001', N'1', 36, N'» Asignacion de Colores', 10, 9, NULL, NULL, 1, N'CATALOGO/D20COMER/pt_articulocolor.aspx', NULL UNION ALL
	SELECT N'700900001', N'1', 37, N'» Colección', 21, 15, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_coleccion', '10000' UNION ALL
	SELECT N'700900001', N'1', 38, N'» Sub-Coleccion', 21, 16, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_subcoleccion', '10000' UNION ALL		
	
	SELECT N'700900001', N'1', 50, N'Listados', 50, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	--SELECT N'700900001', N'1', 51, N'Ordenes de Producción', 50, 1, NULL, NULL, 1, N'D70PRODU/0100PRODU/ordenprod_listado.aspx', NULL UNION ALL
	SELECT N'700900001', N'1', 52, N'Kardex por Fase', 50, 2, NULL, NULL, 1, N'D70PRODU/0100PRODU/ordenprod_fases_kardex.aspx', NULL UNION ALL
	
	SELECT N'700900001', N'1', 70, N'Procesos', 70, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	
	SELECT N'700900001', N'1', 80, N'Utilitarios', 80, 0, NULL, NULL, 1, N'main.aspx', NULL	UNION ALL
	SELECT N'700900001', N'1', 81, N'Impresion de CodBar', 80, 1, NULL, NULL, 1, N'D70PRODU/0100PRODU/pp_codigobarra.aspx', NULL UNION ALL
	SELECT N'700900001', N'1', 82, N'Usuarios', 80, 2, NULL, NULL, 1, N'mdo_maestros/usuarios.aspx', NULL UNION ALL
	SELECT N'700900001', N'1', 83, N'Perfiles', 80, 3, NULL, NULL, 1, N'mdo_maestros/perfil.aspx', NULL UNION ALL
	SELECT N'700900001', N'1', 84, N'Perfil Items', 80, 4, NULL, NULL, 1, N'mdo_maestros/perfilitems.aspx', NULL UNION ALL
	
	SELECT N'700900001', N'1', 100, N'Costos', 100, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'700900001', N'1', 101, N'» Familia de Materiales', 100, 1, NULL, NULL, 1, N'MERCADERIA02.CATALOGO.Frm_familiateladet',  '10000' UNION ALL	
	SELECT N'700900001', N'1', 102, N'» Constantes', 100, 2, NULL, NULL, 1, N'D70Produccion.COSTOS.Frm_constantes', '10000' UNION ALL	
	SELECT N'700900001', N'1', 103, N'» Rubros de Costos', 100, 3, NULL, NULL, 1, N'D70Produccion.COSTOS.Frm_rubrocosto', '10000' UNION ALL
	SELECT N'700900001', N'1', 104, N'» Hojas de Costo', 100, 4, NULL, NULL, 1, N'D70Produccion.COSTOS.Frm_hojacosto', '10000' UNION ALL
	
	SELECT N'700900001', N'1', 200, N'Udp', 200, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'700900001', N'1', 201, N'» Diseñador', 200, 1, NULL, NULL, 1, N'D70Produccion.UDP.Frm_diseñador', '10000' UNION ALL
	SELECT N'700900001', N'1', 202, N'» Variante', 200, 2, NULL, NULL, 1, N'D70Produccion.UDP.Frm_variante', '10000' union all
	
	SELECT N'700900001', N'1', 300, N'Reportes', 300, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'700900001', N'1', 301, N'» Consultar Ord_Producción', 300, 1, NULL, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', '00000' UNION ALL
	SELECT N'700900001', N'1', 302, N'» Consultar Doc_Emitidos', 300, 2, NULL, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', '00000' UNION ALL
	SELECT N'700900001', N'1', 303, N'» Consultar Kardex x Articulo', 300, 3, NULL, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', '00000' UNION ALL
	SELECT N'700900001', N'1', 304, N'» Consultar Stock x Articulo', 300, 4, NULL, NULL, 1, N'DL0Logistica.Frm_reporte_productostock', '00000'		
	
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 8.....Done!', 10, 1) WITH NOWAIT;
	---------------------------------------------------------------------------------------------------------------------------------------------



	/*** OTROS MENUS **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc])				
	SELECT N'A00110000', N'1', 100, N'Tablas', 100, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00110000', N'1', 101, N'Plan Contable PCGE', 100, 1, NULL, N'doctable.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_PlanContable', NULL UNION ALL
	SELECT N'A00110000', N'1', 102, N'Tipo de Diarios', 100, 2, NULL, N'doctext.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_TipoDiario', NULL UNION ALL
	SELECT N'A00110000', N'1', 103, N'Centro de Costos', 100, 3, NULL, N'MM06DA.ICO', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_CentroCostos', NULL UNION ALL
	SELECT N'A00110000', N'1', 104, N'Configurar Estados Financieros', 100, 4, NULL, N'Contab.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_PlantillaContable', NULL UNION ALL
	SELECT N'A00110000', N'1', 105, N'Configurar Provisión RXH y Cta.Dif. Cambio', 100, 5, NULL, N'Contab.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_ConfiguracionRXH_DifCambio', NULL UNION ALL
	SELECT N'A00110000', N'1', 106, N'Clientes/Proveedores', 100, 6, NULL, N'Users 2.ico', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_ClientesProveedores', NULL UNION ALL
	SELECT N'A00110000', N'1', 107, N'Tributos', 100, 7, NULL, N'log.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_Tributos', NULL UNION ALL
	SELECT N'A00110000', N'1', 108, N'Tablas SUNAT', 100, 8, NULL, N'PDT1.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_TablasSunat', NULL UNION ALL
	SELECT N'A00110000', N'1', 109, N'Tipo de Cambio - SUNAT', 100, 9, NULL, N'dollar.ico', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_TipoCambio', NULL UNION ALL
	SELECT N'A00110000', N'1', 110, N'Tipo de Cambio Cierre Mensual', 100, 10, NULL, N'BAP.ico', 1, N'D20COMER/0200TIDAS/p1_movimiento_bv.aspx', NULL UNION ALL
	SELECT N'A00110000', N'1', 111, N'Detracciones - SPOT', 100, 11, NULL, N'arrow_in.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_Detracciones', NULL UNION ALL
	SELECT N'A00110000', N'1', 112, N'Percepciones', 100, 12, NULL, N'arrow_out.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_Percepciones', NULL UNION ALL
	SELECT N'A00110000', N'1', 113, N'Tipo de Exportación', 100, 13, NULL, N'bookmark_open.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_TipoExportacion', NULL UNION ALL
	SELECT N'A00110000', N'1', 114, N'Flujos de Efectivo', 100, 14, NULL, N'bookmark_open.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_FlujoEfectivo', NULL UNION ALL
	SELECT N'A00110000', N'1', 200, N'Información', 200, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00110000', N'1', 201, N'Movimiento', 200, 1, NULL, N'application_form.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_Registro_Contabilidad', '0110' UNION ALL
	SELECT N'A00110000', N'1', 202, N'Ajuste de Asientos', 200, 2, NULL, NULL, 1, N'CATALOGO/GENERAL/cliente.aspx', NULL UNION ALL
	SELECT N'A00110000', N'1', 203, N'Asiento Redondeo/Diferencia Cambio', 200, 3, NULL, NULL, 1, N'CATALOGO/GENERAL/constantesGenerales.aspx', NULL UNION ALL
	SELECT N'A00110000', N'1', 204, N'Generar Asiento de Planilla', 200, 4, NULL, NULL, 1, N'CATALOGO/GENERAL/constantesGenerales.aspx', NULL UNION ALL	
	
	SELECT N'A00110000', N'1', 300, N'Relaciones', 300, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00110000', N'1', 301, N'Registro de Ventas', 300, 0, NULL, N'Contab.png', 1, NULL, NULL UNION ALL
	SELECT N'A00110000', N'1', 302, N'Conceptos', 301, 1, NULL, N'Contab.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_RelacionarConceptosVentas', NULL UNION ALL
	SELECT N'A00110000', N'1', 303, N'Rubros', 301, 2, NULL, N'Contab.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_RubroVentas', NULL UNION ALL
	SELECT N'A00110000', N'1', 304, N'Registro de Compras', 300, 0, NULL, N'Contab.png', 1, NULL, NULL UNION ALL
	SELECT N'A00110000', N'1', 305, N'Conceptos', 304, 1, NULL, N'Contab.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_RelacionarConceptos', NULL UNION ALL
	SELECT N'A00110000', N'1', 306, N'Rubros', 304, 2, NULL, N'Contab.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_RubroCompras', NULL UNION ALL
	SELECT N'A00110000', N'1', 307, N'Provisiones de Planilla', 300, 3, NULL, N'Contab.png', 1, NULL, NULL UNION ALL
	SELECT N'A00110000', N'1', 308, N'Dsctos. y Aportaciones del Personal', 300, 4, NULL, N'Contab.png', 1, NULL, NULL UNION ALL
	
	SELECT N'A00110000', N'1', 400, N'Reportes', 400, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00110000', N'1', 401, N'Libros Principales', 400, 0, NULL, N'Contab.png', 1, NULL, NULL UNION ALL
	SELECT N'A00110000', N'1', 402, N'Formato 5.1: Libro Diario', 401, 1, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteLibroDiarioF51', NULL UNION ALL
	SELECT N'A00110000', N'1', 403, N'Libro Diario', 401, 2, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteLibroDiario', NULL UNION ALL
	SELECT N'A00110000', N'1', 404, N'Libro Mayor', 401, 3, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteLibroMayor', NULL UNION ALL
	SELECT N'A00110000', N'1', 405, N'Libro de Inventarios y Balances', 401, 4, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteInventarioBalances', NULL UNION ALL
	SELECT N'A00110000', N'1', 406, N'Libro Caja y Bancos', 401, 5, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteLibroCajaBancos', NULL UNION ALL
	
	SELECT N'A00110000', N'1', 410, N'Libros Auxiliares', 400, 0, NULL, N'Contab.png', 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00110000', N'1', 411, N'Registro de Ventas', 410, 1, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteRegistroVenta', NULL UNION ALL
	SELECT N'A00110000', N'1', 412, N'Registro de Compras', 410, 2, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteRegistroCompras', NULL UNION ALL
	SELECT N'A00110000', N'1', 413, N'Libro de Retenciones RXH', 410, 3, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteLibroRetencionesRH', NULL UNION ALL
	SELECT N'A00110000', N'1', 414, N'Mayor Auxiliar', 410, 4, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteMayorAuxiliar', NULL UNION ALL
	SELECT N'A00110000', N'1', 415, N'Registro del Régimen de Retenciones-Agentes de Retención', 410, 5, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteLibroRegRetenciones', NULL UNION ALL
	SELECT N'A00110000', N'1', 420, N'Estados Financieros', 400, 0, NULL, N'Contab.png', 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00110000', N'1', 421, N'Balance de Comprobación a 14 Columnas', 420, 1, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteBalanceComprobacion', NULL UNION ALL
	SELECT N'A00110000', N'1', 422, N'Estados Financieros', 420, 2, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteEstadosFinancieros', NULL UNION ALL
	SELECT N'A00110000', N'1', 423, N'Anexos del Balance General', 420, 3, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteAnexosBalance', NULL UNION ALL
	SELECT N'A00110000', N'1', 430, N'Información para análisis', 400, 0, NULL, N'Contab.png', 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00110000', N'1', 431, N'Cuenta Corriente', 430, 1, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteCtaCte', NULL UNION ALL
	SELECT N'A00110000', N'1', 432, N'Vencimiento Letras', 430, 2, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteVctoLetras', NULL UNION ALL
	SELECT N'A00110000', N'1', 433, N'Análisis de Cuenta', 430, 3, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteAnalisisCuenta', NULL UNION ALL
	SELECT N'A00110000', N'1', 434, N'Documentos Ingresados', 430, 4, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteDocumentosIngresados', NULL UNION ALL
	SELECT N'A00110000', N'1', 435, N'Diario General de Documentos', 430, 5, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteDiarioGeneralDocumentos', NULL UNION ALL
	SELECT N'A00110000', N'1', 436, N'Análisis de Gastos por Función', 430, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00110000', N'1', 437, N'Analítico', 436, 1, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteAnalisisGastosFuncionAnalitico', NULL UNION ALL
	SELECT N'A00110000', N'1', 438, N'Resumen', 436, 2, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteAnalisisGastosFuncionResumen', NULL UNION ALL
	SELECT N'A00110000', N'1', 439, N'Cuadro Mensual de Saldos', 430, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00110000', N'1', 440, N'General', 439, 1, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteSaldoMensualGeneral', NULL UNION ALL
	SELECT N'A00110000', N'1', 441, N'Detalle', 439, 2, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteSaldoMensualDetalle', NULL UNION ALL
	SELECT N'A00110000', N'1', 442, N'Diario General de Documentos Anulados', 430, 8, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteDiarioGeneralVoucherAnulados', NULL UNION ALL

	SELECT N'A00110000', N'1', 450, N'Balance por Centro de Costo', 400, 5, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteBalanceCentroCosto', NULL UNION ALL
	SELECT N'A00110000', N'1', 460, N'Vouchers Contables', 400, 6, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteVouchers', NULL UNION ALL
	SELECT N'A00110000', N'1', 461, N'Plan Contable PCGE', 400, 7, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReportePlanContable', NULL UNION ALL	
	SELECT N'A00110000', N'1', 462, N'Tipo de Cambio', 400, 8, NULL, N'dollar.ico', 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteTipoCambio', NULL UNION ALL		
	
	SELECT N'A00110000', N'1', 500, N'Transferencias', 500, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00110000', N'1', 501, N'(F-0626) Régimen de Retenciones (Agentes de Retención)', 500, 1, NULL, N'PDT1.png', 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_Pdt0626RegRetenciones', NULL UNION ALL
	SELECT N'A00110000', N'1', 502, N'Interface Programa Declación Anual de Operaciones con Terceros - DAOT', 500, 2, NULL, N'PDT1.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_GeneracionDAOT', NULL UNION ALL
	SELECT N'A00110000', N'1', 503, N'Interface Programa de Declaración de Beneficios - PDB', 500, 3, NULL, N'PDT1.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_GeneracionPDB', NULL UNION ALL
	SELECT N'A00110000', N'1', 504, N'Interface Planilla Electrónica - PDT 0601', 500, 4, NULL, N'PDT1.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_GenerarPDT601', NULL UNION ALL
	SELECT N'A00110000', N'1', 505, N'Interface Detalle de Operaciones - PDT 3550', 500, 5, NULL, N'PDT1.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_', NULL UNION ALL
	SELECT N'A00110000', N'1', 506, N'Interface Libros Electrónicos - PLE', 500, 6, NULL, N'PDT1.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_GeneracionLE', NULL UNION ALL
	
	SELECT N'A00110000', N'1', 600, N'Utilitarios', 600, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00110000', N'1', 610, N'Cierres Mensuales', 600, 1, NULL, N'onebit_07.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_CierreMensual', NULL UNION ALL
	SELECT N'A00110000', N'1', 620, N'Asientos Automáticos', 600, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00110000', N'1', 621, N'Apertura', 620, 1, NULL, NULL, 1, N'DA0CONTABILIDAD.Contabilidad.Frm_AsientoAperturaEjercicio', NULL UNION ALL
	SELECT N'A00110000', N'1', 622, N'Ventas', 620, 2, NULL, NULL, 1, N'DA0CONTABILIDAD.Contabilidad.Frm_', NULL UNION ALL
	SELECT N'A00110000', N'1', 623, N'Destino', 620, 3, NULL, NULL, 1, N'DA0CONTABILIDAD.Contabilidad.Frm_', NULL UNION ALL
	SELECT N'A00110000', N'1', 624, N'Diferencia de Cambio al Cierre del Ejercicio', 520, 4, NULL, NULL, 1, N'DA0CONTABILIDAD.Contabilidad.Frm_', NULL UNION ALL
	SELECT N'A00110000', N'1', 625, N'Asiento al Cierre del Ejercicio', 620, 5, NULL, NULL, 1, N'DA0CONTABILIDAD.Contabilidad.Frm_AsientoCierreEjercicio', NULL UNION ALL
	SELECT N'A00110000', N'1', 630, N'Validar Cuentas Asiento Destino', 600, 3, NULL, NULL, 1, N'DA0CONTABILIDAD.Contabilidad.Frm_ValidarAsientoDestino', NULL UNION ALL

	SELECT N'A00120000', N'1', 100, N'Tablas', 100, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00120000', N'1', 101, N'Forma/Condiciones de Pago', 100, 1, NULL, N'doctable.png', 1, N'DA0CONTABILIDAD.Compras.Frm_CondicionesPago', NULL UNION ALL
	SELECT N'A00120000', N'1', 102, N'Rubro de Compras', 100, 2, NULL, N'doctext.png', 1, N'DA0CONTABILIDAD.Compras.Frm_RubroComprasGastos', NULL UNION ALL
	SELECT N'A00120000', N'1', 200, N'Movimientos', 200, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00120000', N'1', 201, N'Registro de Compras', 200, 1, NULL, N'libro.ico', 1, N'DA0CONTABILIDAD.Compras.Frm_RegistroCompras', NULL UNION ALL
	SELECT N'A00120000', N'1', 202, N'Recibo de Honorarios', 200, 2, NULL, N'lcambio.jpg', 1, N'DA0CONTABILIDAD.Compras.Frm_registroRXH', NULL UNION ALL
	SELECT N'A00120000', N'1', 203, N'Orden de Compra', 200, 3, NULL, N'8081.ico', 1, N'DA0CONTABILIDAD.Compras.Frm_OrdenCompra', NULL UNION ALL
	SELECT N'A00120000', N'1', 204, N'Orden de Servicio', 200, 4, NULL, N'29.ico', 1, N'DA0CONTABILIDAD.Compras.Frm_OrdenServicio', NULL UNION ALL	
	SELECT N'A00120000', N'1', 300, N'Reportes', 300, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00120000', N'1', 310, N'Registro de Compras', 300, 1, NULL, N'application_form.png', 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteRegistroCompras', NULL UNION ALL
	SELECT N'A00120000', N'1', 320, N'Registro de Recibos por Honorarios', 300, 2, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteLibroRetencionesRH', NULL UNION ALL
	SELECT N'A00120000', N'1', 330, N'Compras por Proveedor', 300, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00120000', N'1', 331, N'Analítico', 330, 1, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_RegistroComprasAnalitico', NULL UNION ALL
	SELECT N'A00120000', N'1', 332, N'Resúmen', 330, 2, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_RegistroComprasResumen', NULL UNION ALL
	SELECT N'A00120000', N'1', 340, N'Registro de Compras Auxiliar', 300, 4, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteRegistroComprasAuxiliar', NULL UNION ALL

	SELECT N'A00130000', N'1', 100, N'Tablas', 100, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00130000', N'1', 101, N'Forma/Condiciones de Pago', 100, 1, NULL, N'doctable.png', 1, N'DA0CONTABILIDAD.Compras.Frm_CondicionesPago', NULL UNION ALL
	SELECT N'A00130000', N'1', 102, N'Rubro de Ventas', 100, 2, NULL, N'doctext.png', 1, N'DA0CONTABILIDAD.Ventas.Frm_RubroVentas', NULL UNION ALL
	SELECT N'A00130000', N'1', 200, N'Movimientos', 200, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00130000', N'1', 201, N'Registro de Ventas', 200, 1, NULL, N'Ventas.ico', 1, N'DA0CONTABILIDAD.Ventas.Frm_RegistroVentas', NULL UNION ALL
	SELECT N'A00130000', N'1', 202, N'Emisión de Factura', 200, 2, NULL, N'lcambio.jpg', 1, N'DA0CONTABILIDAD.Ventas.Frm_EmisionFactura', NULL UNION ALL
	SELECT N'A00130000', N'1', 203, N'Emision de Boleta B/V', 200, 3, NULL, N'8081.ico', 1, N'DA0CONTABILIDAD.Ventas.Frm_EmisionBoleta', NULL UNION ALL
	SELECT N'A00130000', N'1', 300, N'Reportes', 300, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00130000', N'1', 310, N'Registro de Ventas', 300, 1, NULL, N'application_form.png', 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteRegistroVenta', NULL UNION ALL
	SELECT N'A00130000', N'1', 320, N'Clientes', 300, 2, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteClientes', NULL UNION ALL
	SELECT N'A00130000', N'1', 330, N'Ventas por Cliente', 300, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00130000', N'1', 331, N'Analítico', 330, 1, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteVentasxClienteAnalitico', NULL UNION ALL
	SELECT N'A00130000', N'1', 332, N'Resúmen', 330, 2, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteVentasxClienteResumen', NULL UNION ALL
	SELECT N'A00130000', N'1', 400, N'Utilitarios', 400, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00130000', N'1', 401, N'Importar Registro de Ventas', 400, 1, NULL, N'Ventas.ico', 1, N'DA0CONTABILIDAD.Ventas.Frm_ImportarRegVentas', NULL UNION ALL

	SELECT N'A00140000', N'1', 100, N'Tablas', 100, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00140000', N'1', 101, N'Plan Contable PCGE', 100, 1, NULL, N'doctable.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_PlanContable', NULL UNION ALL
	SELECT N'A00140000', N'1', 102, N'Tipo de Diario', 100, 2, NULL, N'doctext.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_TipoDiario', NULL UNION ALL
	SELECT N'A00140000', N'1', 103, N'Clientes/Proveedores', 100, 3, NULL, N'Users 2.ico', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_ClientesProveedores', NULL UNION ALL
	SELECT N'A00140000', N'1', 104, N'Tipo de Cambio', 100, 4, NULL, N'dollar.ico', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_TipoCambio', NULL UNION ALL
	SELECT N'A00140000', N'1', 105, N'Tablas SUNAT', 100, 5, NULL, N'PDT1.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_TablasSunat', NULL UNION ALL
	SELECT N'A00140000', N'1', 106, N'Establecimientos', 100, 6, NULL, N'application_form.png', 1, N'DA0CONTABILIDAD.Tesoreria.Frm_EstabSunat', NULL UNION ALL
	SELECT N'A00140000', N'1', 107, N'Local', 100, 7, NULL, N'application_form.png', 1, N'DA0CONTABILIDAD.Tesoreria.Frm_sys_local', NULL UNION ALL
    SELECT N'A00140000', N'1', 200, N'Información', 200, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00140000', N'1', 201, N'Movimientos', 200, 1, NULL, N'application_form.png', 1, N'DA0CONTABILIDAD.Contabilidad.Frm_Registro_Contabilidad', '0140' UNION ALL
	SELECT N'A00140000', N'1', 202, N'Cancelación y Cobranza de Documentos', 200, 2, NULL, N'lcambio.jpg', 1, N'DA0CONTABILIDAD.Tesoreria.Frm_CancelacionesCobranzas', NULL UNION ALL
	SELECT N'A00140000', N'1', 203, N'Canje de Letras por Pagar/Cobrar', 200, 3, NULL, N'lcambio.jpg', 1, N'DA0CONTABILIDAD.Tesoreria.Frm_CanjeLetras', NULL UNION ALL
	SELECT N'A00140000', N'1', 204, N'Régimen de Retenciones-(Agentes de Retención)', 200, 4, NULL, N'lcambio.jpg', 1, N'DA0CONTABILIDAD.Tesoreria.Frm_RegimenRetenciones', NULL UNION ALL	
	SELECT N'A00140000', N'1', 205, N'Conciliación Bancaria', 200, 5, NULL, NULL, 1, N'DA0CONTABILIDAD.Tesoreria.Frm_ConciliacionBancaria', NULL UNION ALL
	SELECT N'A00140000', N'1', 300, N'Reportes', 300, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00140000', N'1', 310, N'Libro Caja y Bancos', 300, 1, NULL, N'application_form.png', 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteLibroCajaBancos', NULL UNION ALL
	SELECT N'A00140000', N'1', 320, N'Cheques Girados', 300, 2, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteChequesGirados', NULL UNION ALL
	SELECT N'A00140000', N'1', 330, N'Cuentas Corrientes', 300, 3, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteCtaCte', NULL UNION ALL
	SELECT N'A00140000', N'1', 340, N'Vencimiento de Letras', 300, 4, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteVctoLetras', NULL UNION ALL
	SELECT N'A00140000', N'1', 350, N'Vouchers Contables', 300, 5, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteVouchers', NULL UNION ALL	
	SELECT N'A00140000', N'1', 360, N'Maestros', 300, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'A00140000', N'1', 361, N'Plan Contable PCGE', 360, 1, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReportePlanContable', NULL UNION ALL
	SELECT N'A00140000', N'1', 362, N'Tipo de Diario', 360, 2, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_', NULL UNION ALL
	SELECT N'A00140000', N'1', 363, N'Centro de Costo', 360, 3, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_', NULL UNION ALL
	SELECT N'A00140000', N'1', 364, N'Tipo de Cambio', 360, 4, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_', NULL UNION ALL

	SELECT N'B00100000', N'1', 100, N'Tablas', 100, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'B00100000', N'1', 101, N'Forma/Condiciones de Pago', 100, 1, NULL, N'doctable.png', 1, N'DA0CONTABILIDAD.Compras.Frm_CondicionesPago', NULL UNION ALL
	SELECT N'B00100000', N'1', 102, N'Rubro de Compras', 100, 2, NULL, N'doctext.png', 1, N'DA0CONTABILIDAD.Compras.Frm_RubroComprasGastos', NULL UNION ALL
	SELECT N'B00100000', N'1', 200, N'Movimientos', 200, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'B00100000', N'1', 201, N'Registro de Compras', 200, 1, NULL, N'libro.ico', 1, N'DA0CONTABILIDAD.Compras.Frm_RegistroCompras', NULL UNION ALL
	SELECT N'B00100000', N'1', 202, N'Recibo de Honorarios', 200, 2, NULL, N'lcambio.jpg', 1, N'DA0CONTABILIDAD.Compras.Frm_registroRXH', NULL UNION ALL
	SELECT N'B00100000', N'1', 203, N'Orden de Compra', 200, 3, NULL, N'8081.ico', 1, N'DA0CONTABILIDAD.Compras.Frm_OrdenCompra', NULL UNION ALL
	SELECT N'B00100000', N'1', 204, N'Orden de Servicio', 200, 4, NULL, N'29.ico', 1, N'DA0CONTABILIDAD.Compras.Frm_OrdenServicio', NULL UNION ALL	
	SELECT N'B00100000', N'1', 300, N'Reportes', 300, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'B00100000', N'1', 310, N'Registro de Compras', 300, 1, NULL, N'application_form.png', 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteRegistroCompras', NULL UNION ALL
	SELECT N'B00100000', N'1', 320, N'Registro de Recibos por Honorarios', 300, 2, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ReporteLibroRetencionesRH', NULL UNION ALL
	SELECT N'B00100000', N'1', 330, N'Compras por Proveedor', 300, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'B00100000', N'1', 331, N'Analítico', 330, 1, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ComprasxProveedorAnalitico', NULL UNION ALL
	SELECT N'B00100000', N'1', 332, N'Resúmen', 330, 2, NULL, NULL, 1, N'DA0CONTABILIDAD.ReportesContabilidad.Frm_ComprasxProveedorResumen', NULL UNION ALL

	SELECT N'P00100000', N'1', 100, N'Tablas', 100, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'P00100000', N'1', 101, N'Motivo Origen de Ingreso', 100, 1, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'P00100000', N'1', 102, N'Motivo Destino de Salida', 100, 2, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'P00100000', N'1', 103, N'Fases de Producción', 100, 3, NULL, NULL, 1, N'.Frm_Vendedor', NULL UNION ALL
	SELECT N'P00100000', N'1', 104, N'Sub-Fases de Producción', 100, 4, NULL, NULL, 1, N'.Frm_Brokers', NULL UNION ALL
	SELECT N'P00100000', N'1', 105, N'Transportistas', 100, 5, NULL, NULL, 1, N'.Frm_TipoPrenda', NULL UNION ALL
	SELECT N'P00100000', N'1', 106, N'Motivos Guias', 100, 6, NULL, NULL, 1, N'.Frm_Marcas', NULL UNION ALL
	SELECT N'P00100000', N'1', 107, N'Máquinas', 100, 7, NULL, NULL, 1, N'.Frm_Colores', NULL UNION ALL

	SELECT N'P00100000', N'1', 200, N'Movimientos', 200, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'P00100000', N'1', 201, N'Pedidos - Comercial (Consulta)', 200, 1, NULL, NULL, 1, N'Produccion.Frm_Paises', NULL UNION ALL
	SELECT N'P00100000', N'1', 202, N'Generar Orden de Producción', 200, 2, NULL, NULL, 1, N'Produccion.Frm_GenerarOp', NULL UNION ALL
	SELECT N'P00100000', N'1', 203, N'Orden de Producción', 200, 3, NULL, NULL, 1, N'Produccion.Frm_OrdenProduccion', NULL UNION ALL
	SELECT N'P00100000', N'1', 204, N'Orden de Produccion (Planeamiento)', 200, 4, NULL, NULL, 1, N'Produccion.Frm_Paises', NULL UNION ALL
	SELECT N'P00100000', N'1', 205, N'Fechas Termino (Pedidos-Planeamiento)', 200, 5, NULL, NULL, 1, N'Produccion.Frm_Paises', NULL UNION ALL
	SELECT N'P00100000', N'1', 206, N'Matriz de Consumo (UDP)', 200, 6, NULL, NULL, 1, N'Produccion.Frm_Paises', NULL UNION ALL
	SELECT N'P00100000', N'1', 207, N'Corte', 200, 7, NULL, NULL, 1, N'Produccion.Frm_Paises', NULL UNION ALL
	SELECT N'P00100000', N'1', 208, N'Recepción / Despacho', 200, 8, NULL, NULL, 1, N'Produccion.Frm_Paises', NULL UNION ALL
	SELECT N'P00100000', N'1', 209, N'Requerimientos Programados por OP', 200, 9, NULL, NULL, 1, N'Produccion.Frm_Paises', NULL UNION ALL
	SELECT N'P00100000', N'1', 210, N'Equivalencias - Códigos Clientes', 200, 10, NULL, NULL, 1, N'Produccion.Frm_Paises', NULL UNION ALL
	SELECT N'P00100000', N'1', 211, N'Emisión de Factura', 200, 1, NULL, NULL, 11, N'Produccion.Frm_Paises', NULL UNION ALL
	SELECT N'P00100000', N'1', 212, N'Plan Maestro', 200, 12, NULL, NULL, 1, N'Produccion.Frm_Paises', NULL UNION ALL
	SELECT N'P00100000', N'1', 213, N'Ordenes de Tejeduría', 200, 13, NULL, NULL, 1, N'Produccion.Frm_Paises', NULL UNION ALL

	SELECT N'P00100000', N'1', 300, N'Reportes', 300, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'P00100000', N'1', 301, N'Orden de Producción', 300, 1, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'P00100000', N'1', 302, N'Pedido Comercial', 300, 2, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'P00100000', N'1', 303, N'Planeamiento Textil', 300, 3, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'P00100000', N'1', 304, N'Parte de Ingreso', 300, 4, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'P00100000', N'1', 305, N'Parte de Salida', 300, 5, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'P00100000', N'1', 306, N'Control de Corte', 300, 6, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'P00100000', N'1', 307, N'Control de Confecciones', 300, 7, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'P00100000', N'1', 308, N'Control de Acabados', 300, 8, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'P00100000', N'1', 309, N'Tejeduría', 300, 9, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'P00100000', N'1', 310, N'Análisis de Producción', 300, 10, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'P00100000', N'1', 311, N'Datos Generales', 300, 11, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	
	SELECT N'P00100000', N'1', 400, N'Utilitarios', 400, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'P00100000', N'1', 401, N'Cierre - Talleres', 400, 1, NULL, NULL, 1, N'Comercial.Frm_Paises', NULL UNION ALL
	SELECT N'P00100000', N'1', 402, N'Cambiar Datos - Movimiento Talleres', 400, 2, NULL, NULL, 1, N'Comercial.Frm_Paises', NULL	
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 9.....Done!', 10, 1) WITH NOWAIT;




	/*** SEGURIDAD SISTEMA **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc])
	SELECT N'S00100000', N'1', 100, N'Tablas', 100, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'S00100000', N'1', 101, N'Usuarios', 100, 1, NULL, NULL, 1, N'DS0Seguridad.Frm_UsuariosNew', N'00000' UNION ALL
	SELECT N'S00100000', N'1', 102, N'Dominios', 100, 2, NULL, NULL, 1, N'DS0Seguridad.Frm_sys_dominio', N'00000' UNION ALL
	SELECT N'S00100000', N'1', 103, N'Módulos', 100, 3, NULL, NULL, 1, N'DS0Seguridad.Frm_sys_modulo', N'00000' UNION ALL
	SELECT N'S00100000', N'1', 104, N'Locales', 100, 4, NULL, NULL, 1, N'DS0Seguridad.Frm_sys_local', N'00000' UNION ALL
	SELECT N'S00100000', N'1', 105, N'Adm. Usuarios x perfil x local', 100, 5, NULL, NULL, 1, N'DS0Seguridad.Frm_usuarios_perfil_local', N'00000' UNION ALL
	SELECT N'S00100000', N'1', 106, N'Panel de Usuario', 100, 6, NULL, NULL, 1, N'DS0Seguridad.Frm_usuarios_panel', '00000' UNION ALL
	SELECT N'S00100000', N'1', 107, N'Menú de Usuario', 100, 7, NULL, NULL, 1, N'DS0Seguridad.Frm_perfilitems', N'00000' UNION ALL

	SELECT N'S00100000', N'1', 200, N'Usuarios por Proceso', 200, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'S00100000', N'1', 201, N'Usuarios por Proceso', 200, 1, NULL, NULL, 1, N'DS0Seguridad.Frm_UsuariosxProcesos', NULL
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 12.....Done!', 10, 1) WITH NOWAIT;



	/*** OTROS MODULOS **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc])
	SELECT N'600390000', N'1', 408, N'Listado Diferencias de Inventario', 402, 6, NULL, NULL, 1, N'D60ALMAC/0320TELAC/mp_inventario_listadodiferencias.aspx', NULL UNION ALL
	SELECT N'600390000', N'1', 409, N'Conformidad Toma de Inventario', 402, 7, NULL, NULL, 1, N'D60ALMAC/0320TELAC/mp_inventario_conformidad.aspx', NULL UNION ALL
	SELECT N'600390000', N'1', 410, N'Cierre de Período', 400, 3, NULL, NULL, 1, N'D60ALMAC/0320TELAC/mp_local_reorganizacion.aspx', NULL UNION ALL
	SELECT N'600390000', N'1', 411, N'Reorganización de Histórico', 400, 4, NULL, NULL, 1, N'D60ALMAC/0320TELAC/mp_local_reorganizacion.aspx', NULL UNION ALL
	SELECT N'600390000', N'1', 500, N'Utilitarios', 500, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'600390000', N'1', 501, N'Borrado de Tablas', 500, 1, NULL, NULL, 1, N'D60ALMAC/0320TELAC/mp_util_borratablas.aspx', NULL UNION ALL
	SELECT N'600390000', N'1', 502, N'Copia de Tablas', 500, 2, NULL, NULL, 1, N'D60ALMAC/0320TELAC/mp_util_copiatablas.aspx', NULL UNION ALL
	SELECT N'600390000', N'1', 503, N'Exportación de Tablas', 500, 3, NULL, NULL, 1, N'D60ALMAC/0320TELAC/mp_util_exportatablas.aspx', NULL UNION ALL
	SELECT N'600390000', N'1', 504, N'Impresion de CodBar', 500, 4, NULL, NULL, 1, N'D60ALMAC/0320TELAC/mp_codigobarra.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 100, N'Archivos', 100, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 101, N'Consulta al Kardex', 100, 1, NULL, NULL, 1, N'D60ALMAC/0600AFIJO/af_rpt_kardex.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 102, N'Consultar OrdProd', 100, 2, NULL, NULL, 1, N'D70PRODU/0100PRODU/ordenprod_consultar.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 103, N'Documento de Almacén', 100, 3, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 104, N'Nuevo Documento', 103, 1, NULL, NULL, 1, N'D60ALMAC/0600AFIJO/af_movimiento_registrar.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 105, N'Modificar Documento', 103, 2, NULL, NULL, 1, N'D60ALMAC/0600AFIJO/f_movimiento_modificar.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 106, N'Consultar Doc.Almacén', 103, 3, NULL, NULL, 1, N'D60ALMAC/0600AFIJO/af_movimiento_consultar.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 200, N'Catálogo', 200, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 201, N'Activos Fijos', 200, 1, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 202, N'Estados', 201, 1, NULL, NULL, 1, N'CATALOGO/D60ALMAC/0600AFIJO/af_estadoactual.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 203, N'Areas Usuarias', 201, 2, NULL, NULL, 1, N'CATALOGO/D60ALMAC/0600AFIJO/af_areausuaria.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 204, N'Usuarios', 201, 3, NULL, NULL, 1, N'CATALOGO/D60ALMAC/0600AFIJO/af_usuario.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 205, N'Lineas', 201, 4, NULL, NULL, 1, N'CATALOGO/D60ALMAC/0600AFIJO/af_linea.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 206, N'Proveedores', 201, 5, NULL, NULL, 1, N'CATALOGO/D60ALMAC/0600AFIJO/af_grupo.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 207, N'Artículos', 201, 6, NULL, NULL, 1, N'CATALOGO/D60ALMAC/0600AFIJO/af_subgrupo.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 208, N'Producto', 201, 7, NULL, NULL, 1, N'CATALOGO/D60ALMAC/0600AFIJO/af_productos.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 209, N'Constantes Generales', 200, 2, NULL, NULL, 1, N'CATALOGO/GENERAL/constantesGenerales.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 210, N'Tipo de Documentos', 200, 3, NULL, NULL, 1, N'CATALOGO/GENERAL/modulolocaltipdoc.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 211, N'Serie de Documentos', 200, 4, NULL, NULL, 1, N'CATALOGO/GENERAL/modulolocaltipdocseries.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 212, N'Tributo-Tasa', 200, 5, NULL, NULL, 1, N'CATALOGO/GENERAL/tributostasa.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 213, N'Tipo de Cambio', 200, 6, NULL, NULL, 1, N'CATALOGO/GENERAL/tipodecambio.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 214, N'Tipos de Doc.Identidad', 200, 7, NULL, NULL, 1, N'CATALOGO/GENERAL/tipdocidentidad.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 215, N'Proveedor-Cliente', 200, 8, NULL, NULL, 1, N'CATALOGO/GENERAL/cliente.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 216, N'Transportistas', 200, 9, NULL, NULL, 1, N'CATALOGO/GENERAL/transportistas.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 217, N'Vendedores', 200, 10, NULL, NULL, 1, N'CATALOGO/GENERAL/vendedorcorporativo.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 218, N'Centros de Costo', 200, 11, NULL, NULL, 1, N'CATALOGO/GENERAL/centrosdecosto.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 300, N'Listados', 300, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'600600000', N'1', 301, N'Balance de Stock', 300, 1, NULL, NULL, 1, N'D60ALMAC/0600AFIJO/af_balancestock.aspx', NULL
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 10.....Done!', 10, 1) WITH NOWAIT;
	

    /*** MODULO ALMACENES **/
    BEGIN TRANSACTION; /*** PLATAFORMA DESKTOP ALMACEN TELAS ETEL DAVILA ***/
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc])
    SELECT N'610320000', N'1', 100, N'Archivos', 100, 0, 1, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'610320000', N'1', 101, N'Consulta al Kardex', 100, 1, 1, NULL, 1, N'Almacen.Frm_ConsultaKardex', NULL UNION ALL
	SELECT N'610320000', N'1', 102, N'Lotes', 100, 2, 1, NULL, 1, N'Almacen.Frm_MovimientosRollo_Almacen', NULL UNION ALL
	SELECT N'610320000', N'1', 103, N'Movimiento de Almacén', 100, 3, 1, NULL, 1, N'Almacen.Frm_Movimientos_Almacen', NULL UNION ALL
	SELECT N'610320000', N'1', 104, N'Salir', 100, 4, 1, NULL, 1, N'Salir', NULL UNION ALL

	SELECT N'610320000', N'1', 200, N'Catálogo', 200, 0, 2, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'610320000', N'1', 201, N'Productos', 200, 1, 2, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'610320000', N'1', 202, N'Lineas', 201, 2, 2, NULL, 1, N'Almacen.Frm_Lineas', NULL UNION ALL
	SELECT N'610320000', N'1', 203, N'Grupos', 201, 3, 2, NULL, 1, N'Almacen.Frm_Grupo', NULL UNION ALL
	SELECT N'610320000', N'1', 204, N'SubGrupos', 201, 4, 2, NULL, 1, N'Almacen.Frm_SubGrupo', NULL UNION ALL
	SELECT N'610320000', N'1', 205, N'Productos', 201, 5, 2, NULL, 1, N'Almacen.Frm_Productos', NULL UNION ALL
	SELECT N'610320000', N'1', 206, N'Unidades de Medida x Unidad', 200, 2, 2, NULL, 1, N'Almacen.Frm_UnidMedidaUnidad', NULL UNION ALL
	SELECT N'610320000', N'1', 207, N'Receta x Producto', 200, 3, 2, NULL, 1, N'Almacen.Frm_RecetaProducto', NULL UNION ALL
	SELECT N'610320000', N'1', 208, N'Constantes Generales', 200, 4, 2, NULL, 1, N'Almacen.Frm_CostantesGenerales', NULL UNION ALL
	SELECT N'610320000', N'1', 209, N'Tipo de Documentos', 200, 5, 2, NULL, 1, N'Almacen.Frm_ModTipoDocumento', NULL UNION ALL
	SELECT N'610320000', N'1', 210, N'Serie de Documentos', 200, 6, 2, NULL, 1, N'Almacen.Frm_SerieDocumentos', NULL UNION ALL
	SELECT N'610320000', N'1', 211, N'Tipos de Impuesto', 200, 7, 2, NULL, 1, N'Almacen.Frm_TipoImpuesto', NULL UNION ALL
	SELECT N'610320000', N'1', 212, N'Tipo de Cambio x Fecha', 200, 8, 2, NULL, 1, N'Almacen.Frm_TipoCambio', NULL UNION ALL
	SELECT N'610320000', N'1', 213, N'Tipos de Doc.Identidad', 200, 9, 2, NULL, 1, N'Almacen.Frm_TipoDocumentoIdentidad', NULL UNION ALL
	SELECT N'610320000', N'1', 214, N'Proveedor-Cliente', 200, 10, 2, NULL, 1, N'Almacen.Frm_ClientesProveedores', NULL UNION ALL
	SELECT N'610320000', N'1', 215, N'Ubicacion Geografica', 200, 11, 2, NULL, 1, N'Almacen.Frm_Ubigeo', NULL UNION ALL
	SELECT N'610320000', N'1', 216, N'Transportistas', 200, 12, 2, NULL, 1, N'Almacen.Frm_Transportistas', NULL UNION ALL
	SELECT N'610320000', N'1', 217, N'Compradores', 200, 13, 2, NULL, 1, N'Almacen.Frm_CompradorCorporativo', NULL UNION ALL
	SELECT N'610320000', N'1', 218, N'Centros de Costo', 200, 14, 2, NULL, 1, N'Almacen.Frm_CentroCostos', NULL UNION ALL

	SELECT N'610320000', N'1', 300, N'Listados', 300, 0, 3, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'610320000', N'1', 301, N'Balance de Stock', 300, 1, 3, NULL, 1, N'Almacen.Frm_BalanceStockII', NULL UNION ALL
	SELECT N'610320000', N'1', 302, N'Documentos del Período', 300, 2, 3, NULL, 1, N'Almacen.Frm_DocumentosPeriodo', NULL UNION ALL
	SELECT N'610320000', N'1', 303, N'Stock por Producto', 300, 3, 3, NULL, 1, N'Almacen.Frm_StockxProducto', NULL UNION ALL
	SELECT N'610320000', N'1', 304, N'Stock por Lotes', 300, 4, 3, NULL, 1, N'D60ALMACEN/tb_stock_rollos.aspx', NULL UNION ALL
	SELECT N'610320000', N'1', 305, N'Kardex por Producto', 300, 5, 3, NULL, 1, N'D60ALMACEN/tb_kardex_articulo.aspx', NULL UNION ALL
	SELECT N'610320000', N'1', 306, N'Kardex por Lotes', 300, 6, 3, NULL, 1, N'D60ALMACEN/tb_kardex_rollo.aspx', NULL UNION ALL
	SELECT N'610320000', N'1', 307, N'Inventario', 300, 7, 3, NULL, 1, N'D60ALMACEN/tb_inventario_listar.aspx', NULL UNION ALL
	
	SELECT N'610320000', N'1', 400, N'Procesos', 400, 0, 4, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'610320000', N'1', 401, N'Reorganización', 400, 1, 4, NULL, 1, N'Almacen.Frm_ReorganizacionMovimientos', NULL UNION ALL
	SELECT N'610320000', N'1', 402, N'Cierre de Período', 400, 2, 4, NULL, 1, N'Almacen.Frm_CierrePeriodo', NULL UNION ALL
	SELECT N'610320000', N'1', 403, N'Reorganización de Histórico', 400, 3, 4, NULL, 1, N'Almacen.Frm_ReorganizacionHistorico', NULL UNION ALL
		
	SELECT N'610320000', N'1', 500, N'Utilitarios', 500, 0, 5, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'610320000', N'1', 501, N'Borrado de Tablas', 500, 1, 5, NULL, 1, N'Almacen.Frm_util_borratablas', NULL UNION ALL
	SELECT N'610320000', N'1', 502, N'Copia de Tablas', 500, 2, 5, NULL, 1, N'D60ALMACEN/tb_util_copiatablas.aspx', NULL 
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 11.....Done!', 10, 1) WITH NOWAIT;

    BEGIN TRANSACTION; 
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc])
    SELECT N'610500000', N'1', 100, N'Archivos', 100, 0, 1, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'610500000', N'1', 101, N'Consulta al Kardex', 100, 1, 1, NULL, 1, N'Almacen.Frm_ConsultaKardex', NULL UNION ALL
	SELECT N'610500000', N'1', 102, N'Lotes', 100, 2, 1, NULL, 1, N'Almacen.Frm_MovimientosRollo_Almacen', NULL UNION ALL
	SELECT N'610500000', N'1', 103, N'Movimiento de Almacén', 100, 3, 1, NULL, 1, N'Almacen.Frm_Movimientos_Almacen', NULL UNION ALL
	SELECT N'610500000', N'1', 104, N'Salir', 100, 4, 1, NULL, 1, N'Salir', NULL UNION ALL

	SELECT N'610500000', N'1', 200, N'Catálogo', 200, 0, 2, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'610500000', N'1', 201, N'Productos', 200, 1, 2, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'610500000', N'1', 202, N'Lineas', 201, 2, 2, NULL, 1, N'Almacen.Frm_Lineas', NULL UNION ALL
	SELECT N'610500000', N'1', 203, N'Grupos', 201, 3, 2, NULL, 1, N'Almacen.Frm_Grupo', NULL UNION ALL
	SELECT N'610500000', N'1', 204, N'SubGrupos', 201, 4, 2, NULL, 1, N'Almacen.Frm_SubGrupo', NULL UNION ALL
	SELECT N'610500000', N'1', 205, N'Productos', 201, 5, 2, NULL, 1, N'Almacen.Frm_Productos', NULL UNION ALL
	SELECT N'610500000', N'1', 206, N'Unidades de Medida x Unidad', 200, 2, 2, NULL, 1, N'Almacen.Frm_UnidMedidaUnidad', NULL UNION ALL
	SELECT N'610500000', N'1', 207, N'Receta x Producto', 200, 3, 2, NULL, 1, N'Almacen.Frm_RecetaProducto', NULL UNION ALL
	SELECT N'610500000', N'1', 208, N'Constantes Generales', 200, 4, 2, NULL, 1, N'Almacen.Frm_CostantesGenerales', NULL UNION ALL
	SELECT N'610500000', N'1', 209, N'Tipo de Documentos', 200, 5, 2, NULL, 1, N'Almacen.Frm_ModTipoDocumento', NULL UNION ALL
	SELECT N'610500000', N'1', 210, N'Serie de Documentos', 200, 6, 2, NULL, 1, N'Almacen.Frm_SerieDocumentos', NULL UNION ALL
	SELECT N'610500000', N'1', 211, N'Tipos de Impuesto', 200, 7, 2, NULL, 1, N'Almacen.Frm_TipoImpuesto', NULL UNION ALL
	SELECT N'610500000', N'1', 212, N'Tipo de Cambio x Fecha', 200, 8, 2, NULL, 1, N'Almacen.Frm_TipoCambio', NULL UNION ALL
	SELECT N'610500000', N'1', 213, N'Tipos de Doc.Identidad', 200, 9, 2, NULL, 1, N'Almacen.Frm_TipoDocumentoIdentidad', NULL UNION ALL
	SELECT N'610500000', N'1', 214, N'Proveedor-Cliente', 200, 10, 2, NULL, 1, N'Almacen.Frm_ClientesProveedores', NULL UNION ALL
	SELECT N'610500000', N'1', 215, N'Ubicacion Geografica', 200, 11, 2, NULL, 1, N'Almacen.Frm_Ubigeo', NULL UNION ALL
	SELECT N'610500000', N'1', 216, N'Transportistas', 200, 12, 2, NULL, 1, N'Almacen.Frm_Transportistas', NULL UNION ALL
	SELECT N'610500000', N'1', 217, N'Compradores', 200, 13, 2, NULL, 1, N'Almacen.Frm_CompradorCorporativo', NULL UNION ALL
	SELECT N'610500000', N'1', 218, N'Centros de Costo', 200, 14, 2, NULL, 1, N'Almacen.Frm_CentroCostos', NULL UNION ALL

	SELECT N'610500000', N'1', 300, N'Listados', 300, 0, 3, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'610500000', N'1', 301, N'Balance de Stock', 300, 1, 3, NULL, 1, N'Almacen.Frm_BalanceStockII', NULL UNION ALL
	SELECT N'610500000', N'1', 302, N'Documentos del Período', 300, 2, 3, NULL, 1, N'Almacen.Frm_DocumentosPeriodo', NULL UNION ALL
	SELECT N'610500000', N'1', 303, N'Stock por Producto', 300, 3, 3, NULL, 1, N'Almacen.Frm_StockxProducto', NULL UNION ALL
	SELECT N'610500000', N'1', 304, N'Stock por Lotes', 300, 4, 3, NULL, 1, N'D60ALMACEN/tb_stock_rollos.aspx', NULL UNION ALL
	SELECT N'610500000', N'1', 305, N'Kardex por Producto', 300, 5, 3, NULL, 1, N'D60ALMACEN/tb_kardex_articulo.aspx', NULL UNION ALL
	SELECT N'610500000', N'1', 306, N'Kardex por Lotes', 300, 6, 3, NULL, 1, N'D60ALMACEN/tb_kardex_rollo.aspx', NULL UNION ALL
	SELECT N'610500000', N'1', 307, N'Inventario', 300, 7, 3, NULL, 1, N'D60ALMACEN/tb_inventario_listar.aspx', NULL UNION ALL
	
	SELECT N'610500000', N'1', 400, N'Procesos', 400, 0, 4, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'610500000', N'1', 401, N'Reorganización', 400, 1, 4, NULL, 1, N'Almacen.Frm_ReorganizacionMovimientos', NULL UNION ALL
	SELECT N'610500000', N'1', 402, N'Cierre de Período', 400, 2, 4, NULL, 1, N'Almacen.Frm_CierrePeriodo', NULL UNION ALL
	SELECT N'610500000', N'1', 403, N'Reorganización de Histórico', 400, 3, 4, NULL, 1, N'Almacen.Frm_ReorganizacionHistorico', NULL UNION ALL
		
	SELECT N'610500000', N'1', 500, N'Utilitarios', 500, 0, 5, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'610500000', N'1', 501, N'Borrado de Tablas', 500, 1, 5, NULL, 1, N'Almacen.Frm_util_borratablas', NULL UNION ALL
	SELECT N'610500000', N'1', 502, N'Copia de Tablas', 500, 2, 5, NULL, 1, N'D60ALMACEN/tb_util_copiatablas.aspx', NULL 
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 14.....Done!', 10, 1) WITH NOWAIT;
   
    /*** PLATAFORMA DESKTOP ALMACEN MERCADERIAS ETEL DAVILA ***/
    BEGIN TRANSACTION; 
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc])
    SELECT N'610700000', N'1', 100, N'Archivos', 100, 0, 1, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'610700000', N'1', 101, N'Consulta al Kardex', 100, 1, 1, NULL, 1, N'Almacen.Frm_ConsultaKardex', NULL UNION ALL
	SELECT N'610700000', N'1', 102, N'Lotes', 100, 2, 1, NULL, 1, N'Almacen.Frm_MovimientosRollo_Almacen', NULL UNION ALL
	SELECT N'610700000', N'1', 103, N'Movimiento de Almacén', 100, 3, 1, NULL, 1, N'Almacen.Frm_Movimientos_Almacen', NULL UNION ALL
	SELECT N'610700000', N'1', 104, N'Salir', 100, 4, 1, NULL, 1, N'Salir', NULL UNION ALL

	SELECT N'610700000', N'1', 200, N'Catálogo', 200, 0, 2, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'610700000', N'1', 201, N'Productos', 200, 1, 2, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'610700000', N'1', 202, N'Lineas', 201, 2, 2, NULL, 1, N'Almacen.Frm_Lineas', NULL UNION ALL
	SELECT N'610700000', N'1', 203, N'Grupos', 201, 3, 2, NULL, 1, N'Almacen.Frm_Grupo', NULL UNION ALL
	SELECT N'610700000', N'1', 204, N'SubGrupos', 201, 4, 2, NULL, 1, N'Almacen.Frm_SubGrupo', NULL UNION ALL
	SELECT N'610700000', N'1', 205, N'Productos', 201, 5, 2, NULL, 1, N'Almacen.Frm_Productos', NULL UNION ALL
	SELECT N'610700000', N'1', 206, N'Unidades de Medida x Unidad', 200, 2, 2, NULL, 1, N'Almacen.Frm_UnidMedidaUnidad', NULL UNION ALL
	SELECT N'610700000', N'1', 207, N'Receta x Producto', 200, 3, 2, NULL, 1, N'Almacen.Frm_RecetaProducto', NULL UNION ALL
	SELECT N'610700000', N'1', 208, N'Constantes Generales', 200, 4, 2, NULL, 1, N'Almacen.Frm_CostantesGenerales', NULL UNION ALL
	SELECT N'610700000', N'1', 209, N'Tipo de Documentos', 200, 5, 2, NULL, 1, N'Almacen.Frm_ModTipoDocumento', NULL UNION ALL
	SELECT N'610700000', N'1', 210, N'Serie de Documentos', 200, 6, 2, NULL, 1, N'Almacen.Frm_SerieDocumentos', NULL UNION ALL
	SELECT N'610700000', N'1', 211, N'Tipos de Impuesto', 200, 7, 2, NULL, 1, N'Almacen.Frm_TipoImpuesto', NULL UNION ALL
	SELECT N'610700000', N'1', 212, N'Tipo de Cambio x Fecha', 200, 8, 2, NULL, 1, N'Almacen.Frm_TipoCambio', NULL UNION ALL
	SELECT N'610700000', N'1', 213, N'Tipos de Doc.Identidad', 200, 9, 2, NULL, 1, N'Almacen.Frm_TipoDocumentoIdentidad', NULL UNION ALL
	SELECT N'610700000', N'1', 214, N'Proveedor-Cliente', 200, 10, 2, NULL, 1, N'Almacen.Frm_ClientesProveedores', NULL UNION ALL
	SELECT N'610700000', N'1', 215, N'Ubicacion Geografica', 200, 11, 2, NULL, 1, N'Almacen.Frm_Ubigeo', NULL UNION ALL
	SELECT N'610700000', N'1', 216, N'Transportistas', 200, 12, 2, NULL, 1, N'Almacen.Frm_Transportistas', NULL UNION ALL
	SELECT N'610700000', N'1', 217, N'Compradores', 200, 13, 2, NULL, 1, N'Almacen.Frm_CompradorCorporativo', NULL UNION ALL
	SELECT N'610700000', N'1', 218, N'Centros de Costo', 200, 14, 2, NULL, 1, N'Almacen.Frm_CentroCostos', NULL UNION ALL

	SELECT N'610700000', N'1', 300, N'Listados', 300, 0, 3, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'610700000', N'1', 301, N'Balance de Stock', 300, 1, 3, NULL, 1, N'Almacen.Frm_BalanceStockII', NULL UNION ALL
	SELECT N'610700000', N'1', 302, N'Documentos del Período', 300, 2, 3, NULL, 1, N'Almacen.Frm_DocumentosPeriodo', NULL UNION ALL
	SELECT N'610700000', N'1', 303, N'Stock por Producto', 300, 3, 3, NULL, 1, N'Almacen.Frm_StockxProducto', NULL UNION ALL
	SELECT N'610700000', N'1', 304, N'Stock por Lotes', 300, 4, 3, NULL, 1, N'D60ALMACEN/tb_stock_rollos.aspx', NULL UNION ALL
	SELECT N'610700000', N'1', 305, N'Kardex por Producto', 300, 5, 3, NULL, 1, N'D60ALMACEN/tb_kardex_articulo.aspx', NULL UNION ALL
	SELECT N'610700000', N'1', 306, N'Kardex por Lotes', 300, 6, 3, NULL, 1, N'D60ALMACEN/tb_kardex_rollo.aspx', NULL UNION ALL
	SELECT N'610700000', N'1', 307, N'Inventario', 300, 7, 3, NULL, 1, N'D60ALMACEN/tb_inventario_listar.aspx', NULL UNION ALL
	
	SELECT N'610700000', N'1', 400, N'Procesos', 400, 0, 4, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'610700000', N'1', 401, N'Reorganización', 400, 1, 4, NULL, 1, N'Almacen.Frm_ReorganizacionMovimientos', NULL UNION ALL
	SELECT N'610700000', N'1', 402, N'Cierre de Período', 400, 2, 4, NULL, 1, N'Almacen.Frm_CierrePeriodo', NULL UNION ALL
	SELECT N'610700000', N'1', 403, N'Reorganización de Histórico', 400, 3, 4, NULL, 1, N'Almacen.Frm_ReorganizacionHistorico', NULL UNION ALL
		
	SELECT N'610700000', N'1', 500, N'Utilitarios', 500, 0, 5, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'610700000', N'1', 501, N'Borrado de Tablas', 500, 1, 5, NULL, 1, N'Almacen.Frm_util_borratablas', NULL UNION ALL
	SELECT N'610700000', N'1', 502, N'Copia de Tablas', 500, 2, 5, NULL, 1, N'D60ALMACEN/tb_util_copiatablas.aspx', NULL 
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 15.....Done!', 10, 1) WITH NOWAIT;


	/*** LOGISTICA  ADMINISTRADOR ***/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc],[dominioid],[moduloid], [local])
	SELECT N'L00100000', N'1', 90, N'Tablas', 90, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'L00100000', N'1', 91, N'Proveedor-Cliente', 90, 1, 2, NULL, 1, N'Generales.Frm_clientesproveedores', null, 'L0', '0100', '001' UNION ALL
	
	SELECT N'L00100000', N'1', 100, N'Catalogos', 100, 0, 3, NULL, 1, N'main.aspx', NULL,NULL ,NULL ,NULL UNION ALL
	SELECT N'L00100000', N'1', 101, N'• Colores', 100, 1, 3, NULL, 1, N'DL0Logistica.Catalogo.Frm_color', NULL, 'L0', '0100', '001' UNION ALL	
	SELECT N'L00100000', N'1', 102, N'• Lineas', 100, 2, 3, NULL, 1, N'DL0Logistica.Catalogo.Frm_linea', NULL, 'L0', '0100', '001' UNION ALL
	SELECT N'L00100000', N'1', 103, N'• Grupos', 100, 3, 3, NULL, 1, N'DL0Logistica.Catalogo.Frm_grupo', NULL, 'L0', '0100', '001' UNION ALL
	SELECT N'L00100000', N'1', 104, N'• Artículos', 100, 4, 3, NULL, 1, N'DL0Logistica.Catalogo.Frm_subgrupo', NULL, 'L0', '0100', '001' UNION ALL
	SELECT N'L00100000', N'1', 105, N'• Producto', 100, 5, 3, NULL, 1, N'DL0Logistica.Catalogo.Frm_producto', NULL, 'L0', '0100', '001' UNION ALL	
	SELECT N'L00100000', N'1', 106, N'• Marca x SubGrupo', 100, 6, 3, NULL, 1, N'DL0Logistica.Catalogo.Frm_MarcaSubgrupo', NULL, 'L0', '0100', '001' UNION ALL
	
	SELECT N'L00100000', N'1', 200, N'Orden Compra', 200, 0, 4, NULL, 1, N'main.aspx', NULL,NULL,NULL,NULL UNION ALL 
	SELECT N'L00100000', N'1', 201, N'Generar Orden', 200, 1, 4, NULL, 1, N'DL0Logistica.Frm_ordencompra', NULL,'L0','0100','001' UNION ALL
	
	SELECT N'L00100000', N'1', 300, N'Reportes', 300, 0, 5, NULL, 1, N'main.aspx', NULL ,NULL,NULL,NULL	UNION ALL
	SELECT N'L00100000', N'1', 301, N'• Listar Ordenes de Compra', 300, 1, 5, NULL, 1, N'DL0Logistica.Frm_reporte_ordcompra', NULL,'L0','0100','001'  UNION ALL
	SELECT N'L00100000', N'1', 302, N'• Kardex Orden de Compra', 300, 2, 5, NULL, 1, N'DL0Logistica.Frm_reporte_kardex', NULL,'L0','0100','001' UNION ALL
--	SELECT N'L00100000', N'1', 302, N'• Listar Pendiente de Compra', 300, 1, 5, NULL, 1, N'DL0Logistica.Frm_reportedecompra', NULL,'L0','0100','001'-- UNION ALL
	SELECT N'L00100000', N'1', 304, N'• Stock por Artículo', 300, 4, 3, NULL, 1, N'DL0Logistica.Frm_reporte_productostock', null, '60', '0100', '001' UNION ALL
	SELECT N'L00100000', N'1', 305, N'• Listado Ordenes Emitidas', 300, 5, 3, NULL, 1, N'DL0Logistica.Frm_reporte_ordemitidas', null, '60', '0100', '001' --UNION ALL
		
	--SELECT N'L00100000', N'1', 400, N'Archivo', 400, 0, 6, NULL, 1, N'main.aspx', NULL ,NULL,NULL,NULL	UNION ALL
	--SELECT N'L00100000', N'1', 401, N'Liquidacion x Importacion', 400, 1, 6, NULL, 1, N'DL0Logistica.Frm_liquidacion_importacion', NULL,'L0','0100','001'

	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 16.....Done!', 10, 1) WITH NOWAIT;



	/*** LOGISTICA  OPERADOR ***/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc],[dominioid],[moduloid], [local])
	SELECT N'L00100001', N'1', 90, N'Tablas', 90, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'L00100001', N'1', 91, N'Proveedor-Cliente', 90, 1, 2, NULL, 1, N'Generales.Frm_clientesproveedores', '10000', 'L0', '0100', '001' UNION ALL
	
	SELECT N'L00100001', N'1', 100, N'Catalogo Almacenes', 100, 0, 2, NULL, 1, N'main.aspx', NULL,NULL ,NULL ,NULL UNION ALL
	SELECT N'L00100001', N'1', 101, N'Colores', 100, 1, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_color', '00000', 'L0', '0100', '001' UNION ALL	
	SELECT N'L00100001', N'1', 102, N'Lineas', 100, 2, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_linea', '00000', 'L0', '0100', '001' UNION ALL
	SELECT N'L00100001', N'1', 103, N'Grupos', 100, 3, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_grupo', '00000', 'L0', '0100', '001' UNION ALL
	SELECT N'L00100001', N'1', 104, N'Artículos', 100, 4, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_subgrupo', '00000', 'L0', '0100', '001' UNION ALL
	SELECT N'L00100001', N'1', 105, N'Producto', 100, 5, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_producto', '00000', 'L0', '0100', '001' UNION ALL	
	SELECT N'L00100001', N'1', 106, N'Marca x SubGrupo', 100, 6, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_MarcaSubgrupo', null, 'L0', '0100', '001' UNION ALL
	
	SELECT N'L00100001', N'1', 200, N'Orden Compra', 200, 0, 4, NULL, 1, N'main.aspx', NULL,NULL,NULL,NULL UNION ALL 
	SELECT N'L00100001', N'1', 201, N'Generar Orden', 200, 1, 4, NULL, 1, N'DL0Logistica.Frm_ordencompra', '10000','L0','0100','001' UNION ALL
	
	SELECT N'L00100001', N'1', 300, N'Reportes', 300, 0, 5, NULL, 1, N'main.aspx', NULL ,NULL,NULL,NULL	UNION ALL
	SELECT N'L00100001', N'1', 301, N'Listar Ordenes de Compra', 300, 1, 5, NULL, 1, N'DL0Logistica.Frm_reporte_ordcompra', '10000','L0','0100','001' UNION ALL 
	SELECT N'L00100001', N'1', 302, N'Kardex Orden de Compra', 300, 2, 5, NULL, 1, N'DL0Logistica.Frm_reporte_kardex', '10000','L0','0100','001' UNION ALL
	SELECT N'L00100001', N'1', 304, N'Stock por Artículo', 300, 4, 3, NULL, 1, N'DL0Logistica.Frm_reporte_productostock', '10000', '60', '0100', '001' UNION ALL
	SELECT N'L00100001', N'1', 305, N'Listado Ordenes Emitidas', 300, 5, 3, NULL, 1, N'DL0Logistica.Frm_reporte_ordemitidas', '10000', '60', '0100', '001' UNION ALL

	SELECT N'L00100001', N'1', 400, N'Archivo', 400, 0, 5, NULL, 1, N'main.aspx', NULL ,NULL,NULL,NULL	UNION ALL
	SELECT N'L00100001', N'1', 401, N'Liquidacion x Importacion', 400, 1, 5, NULL, 1, N'DL0Logistica.Frm_liquidacion_importacion', '00000','L0','0100','001'

	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 16.....Done!', 10, 1) WITH NOWAIT;

	--select * from tb_perfilitems where idper='L00100000'

	------------------------------ MENUS DE ALMACENES -----------------------------


	/*** MODULO ALMACENES  ESTAMPADOS SUPERVISOR **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma] , [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600340000', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600340000', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', null, '60', '0340', '001' UNION ALL
    SELECT N'600340000', N'1', 102, N'Motivo Internos', 100, 9, 2, NULL, 1, N'Generales.Frm_mottrasladoint', null, '60', '0340', '001' UNION ALL    
    SELECT N'600340000', N'1', 104, N'Tipo de cambio',100, 9, 2, NULL, 1, N'Generales.Frm_tipocambio', null, '60', '0340', '001' UNION ALL    
    SELECT N'600340000', N'1', 108, N'Tipos de Documentos', 100, 9, 2, NULL, 1, N'Generales.Frm_modulo_local_tipodoc', null, '60', '0340', '001' UNION ALL
    SELECT N'600340000', N'1', 109, N'Cond. de Pago', 100, 9, 2, NULL, 1, N'Generales.Frm_condpago', null, '60', '0340', '001' UNION ALL    
    SELECT N'600340000', N'1', 114, N'Unidad de Medida', 100, 9, 2, NULL, 1, N'Generales.Frm_UndMedida', null, '60', '0340', '001' UNION ALL
	SELECT N'600340000', N'1', 115, N'Equivalencia', 100, 9, 2, NULL, 1, N'Generales.Frm_Equivalencia', null, '60', '0340', '001' UNION ALL
	
	
    SELECT N'600340000', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600340000', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', null, '60', '0340', '001' UNION ALL
	SELECT N'600340000', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600340000', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', null, '60', '0340', '001' UNION ALL
	SELECT N'600340000', N'1', 205, N'Digitacion Inventariado', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_digitacion_inv', null, '60', '0340', '001' UNION ALL
	--SELECT N'600340000', N'1', 206, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', null, '60', '0340', '001' UNION ALL
    --SELECT N'600340000', N'1', 207, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra', '00000', null, null, null UNION ALL		
	
    SELECT N'600340000', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600340000', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', null, '60', '0340', '001' UNION ALL
	SELECT N'600340000', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', null, '60', '0340', '001' UNION ALL
	SELECT N'600340000', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'DL0Logistica.Frm_reporte_productostock', null, '60', '0340', '001' UNION ALL
	--SELECT N'600340000', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', null, '60', '0340', '001' UNION ALL
	SELECT N'600340000', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', null, '60', '0340', '001' UNION ALL
	--SELECT N'600340000', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', null, '60', '0340', '001' UNION ALL
	SELECT N'600340000', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', null, '60', '0340', '001' UNION ALL
	SELECT N'600340000', N'1', 408, N'Toma de Inventario', 400, 8, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_TomaInventario', null, '60', '0340', '001' UNION ALL
	SELECT N'600340000', N'1', 409, N'Diferencia de Inventarios', 400, 9, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInv', null, '60', '0340', '001' UNION ALL
    --SELECT N'600340000', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', null, '60', '0340', '001' UNION ALL
    SELECT N'600340000', N'1', 411, N'Ordenes Pendientes', 400, 11, 1, NULL, 1, N'DL0Logistica.Frm_reporte_ordcompra', null, '60', '0340', '001' UNION ALL	
	SELECT N'600340000', N'1', 412, N'Requerimiento de  O/C', 400, 12, 1, NULL, 1, N'D60ALMACEN.REPORTES.Frm_RequerimientoOC', null, '60', '0340', '001' UNION ALL
	
    SELECT N'600340000', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600340000', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_perimes', null, '60', '0340', '001' UNION ALL
	SELECT N'600340000', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes', null, '60', '0340', '001' UNION ALL
	SELECT N'600340000', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_historico', null, '60', '0340', '001' UNION ALL
	SELECT N'600340000', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes_inioper', null, '60', '0340', '001' UNION ALL
	SELECT N'600340000', N'1', 513, N'Constantes Generales', 500,13, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Form_ConstantesGenerales', null, '60', '0340', '001' UNION ALL
	SELECT N'600340000', N'1', 514, N'Ajuste de Inventario', 500,14, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_ajuste_inventario', null, '60', '0340', '001' 	
    COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 17.....Done!', 10, 1) WITH NOWAIT; 



	/*** MODULO ALMACENES  ESTAMPADOS OPERADOR **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600340001', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600340001', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', '10000', '60', '0340', '001' UNION ALL
    SELECT N'600340001', N'1', 102, N'Motivo Internos', 100, 9, 2, NULL, 1, N'Generales.Frm_mottrasladoint', '10000', '60', '0340', '001' UNION ALL
    --SELECT N'600340001', N'1', 103, N'Centro costo', 100, 9, 2, NULL, 1, N'Generales.Frm_centrocostos', '10000', '60', '0340', '001' UNION ALL
    SELECT N'600340001', N'1', 104, N'Tipo de cambio',100, 9, 2, NULL, 1, N'Generales.Frm_tipocambio', '10000', '60', '0340', '001' UNION ALL

    SELECT N'600340001', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600340001', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', null, '60', '0340', '001' UNION ALL
	SELECT N'600340001', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600340001', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', '00000', '60', '0340', '001' UNION ALL
	SELECT N'600340001', N'1', 205, N'Digitacion Inventariado', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_digitacion_inv', '00000', '60', '0340', '001' UNION ALL
	--SELECT N'600340001', N'1', 206, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', null, '60', '0340', '001' UNION ALL
    --SELECT N'600340001', N'1', 207, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra', '00000', null, null, null UNION ALL
	
    SELECT N'600340001', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600340001', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', '10000', '60', '0340', '001' UNION ALL
	SELECT N'600340001', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', '10000', '60', '0340', '001' UNION ALL
	SELECT N'600340001', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'DL0Logistica.Frm_reporte_productostock', '10000', '60', '0340', '001' UNION ALL
	--SELECT N'600340001', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', '10000', '60', '0340', '001' UNION ALL
	SELECT N'600340001', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', '10000', '60', '0340', '001' UNION ALL
	--SELECT N'600340001', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', '10000', '60', '0340', '001' UNION ALL
	SELECT N'600340001', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', '10000', '60', '0340', '001' UNION ALL
	SELECT N'600340001', N'1', 408, N'Toma de Inventario', 400, 8, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_TomaInventario', '10000', '60', '0340', '001' UNION ALL
	SELECT N'600340001', N'1', 409, N'Diferencia de Inventarios', 400, 9, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInv', '10000', '60', '0340', '001' UNION ALL
    --SELECT N'600340001', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', '10000', '60', '0340', '001' UNION ALL
    SELECT N'600340001', N'1', 411, N'Ordenes Pendientes', 400, 11, 1, NULL, 1, N'DL0Logistica.Frm_reporte_ordcompra', null, '60', '0340', '001' UNION ALL	
	SELECT N'600340001', N'1', 412, N'Requerimiento de  O/C', 400, 12, 1, NULL, 1, N'D60ALMACEN.REPORTES.Frm_RequerimientoOC', null, '60', '0340', '001' UNION ALL
	
    SELECT N'600340001', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600340001', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_perimes', '10000', '60', '0340', '001' UNION ALL
	SELECT N'600340001', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes', '10000', '60', '0340', '001' UNION ALL
	SELECT N'600340001', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_historico', '10000', '60', '0340', '001' UNION ALL
	SELECT N'600340001', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes_inioper', '10000', '60', '0340', '001' UNION ALL
	SELECT N'600340001', N'1', 513, N'Constantes Generales', 500,13, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Form_ConstantesGenerales', '10000', '60', '0340', '001' UNION ALL
	SELECT N'600340001', N'1', 514, N'Ajuste de Inventario', 500,14, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_ajuste_inventario', '10000', '60', '0340', '001' 
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 18.....Done!', 10, 1) WITH NOWAIT;




	/*** MODULO ALMACENES  BORDADOS SUPERVISOR **/
	BEGIN TRANSACTION; 
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma] , [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600350000', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600350000', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', null, '60', '0350', '001' UNION ALL
    SELECT N'600350000', N'1', 102, N'Motivo Internos', 100, 9, 2, NULL, 1, N'Generales.Frm_mottrasladoint', null, '60', '0350', '001' UNION ALL
    --SELECT N'600350000', N'1', 103, N'Centro costo', 100, 9, 2, NULL, 1, N'Generales.Frm_centrocostos', null, '60', '0350', '001' UNION ALL
    SELECT N'600350000', N'1', 104, N'Tipo de cambio',100, 9, 2, NULL, 1, N'Generales.Frm_tipocambio', null, '60', '0350', '001' UNION ALL
    --SELECT N'600350000', N'1', 105, N'Sys Dominio', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_dominio', null, '60', '0350', '001' UNION ALL
    --SELECT N'600350000', N'1', 106, N'Sys Módulo', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_modulo', null, '60', '0350', '001' UNION ALL
    --SELECT N'600350000', N'1', 107, N'Sys Local', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_local', null, '60', '0350', '001' UNION ALL
    SELECT N'600350000', N'1', 108, N'Tipos de Documentos', 100, 9, 2, NULL, 1, N'Generales.Frm_modulo_local_tipodoc', null, '60', '0350', '001' UNION ALL
    SELECT N'600350000', N'1', 109, N'Cond. de Pago', 100, 9, 2, NULL, 1, N'Generales.Frm_condpago', null, '60', '0350', '001' UNION ALL
    --SELECT N'600350000', N'1', 110, N'Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_usuarios', null, '60', '0350', '001' UNION ALL
    --SELECT N'600350000', N'1', 111, N'Adm. Usuarios x perfil x local',100, 9, 2, NULL, 1, N'Generales.Frm_usuarios_perfil_local', null, '60', '0350', '001' UNION ALL
	--SELECT N'600350000', N'1', 112, N'Panel de Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_usuarios_panel', null, '60', '0350', '001' UNION ALL
    --SELECT N'600350000', N'1', 113, N'Menú de Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_perfilitems', null, '60', '0350', '001' UNION ALL
    SELECT N'600350000', N'1', 114, N'Unidad de Medida', 100, 9, 2, NULL, 1, N'Generales.Frm_UndMedida', null, '60', '0350', '001' UNION ALL
	SELECT N'600350000', N'1', 115, N'Equivalencia', 100, 9, 2, NULL, 1, N'Generales.Frm_Equivalencia', null, '60', '0350', '001' UNION ALL
	
    SELECT N'600350000', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600350000', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', null, '60', '0350', '001' UNION ALL
	SELECT N'600350000', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600350000', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', null, '60', '0350', '001' UNION ALL
	SELECT N'600350000', N'1', 205, N'Digitacion Inventariado', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_digitacion_inv', null, '60', '0350', '001' UNION ALL
	--SELECT N'600350000', N'1', 206, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', null, '60', '0350', '001' UNION ALL
    --SELECT N'600350000', N'1', 207, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra', '00000', null, null, null UNION ALL

    SELECT N'600350000', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600350000', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', null, '60', '0350', '001' UNION ALL
	SELECT N'600350000', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', null, '60', '0350', '001' UNION ALL
	SELECT N'600350000', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'DL0Logistica.Frm_reporte_productostock', null, '60', '0350', '001' UNION ALL
	--SELECT N'600350000', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', null, '60', '0350', '001' UNION ALL
	SELECT N'600350000', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', null, '60', '0350', '001' UNION ALL
	--SELECT N'600350000', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', null, '60', '0350', '001' UNION ALL
	SELECT N'600350000', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', null, '60', '0350', '001' UNION ALL
	SELECT N'600350000', N'1', 408, N'Toma de Inventario', 400, 8, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_TomaInventario', null, '60', '0350', '001' UNION ALL
	SELECT N'600350000', N'1', 409, N'Diferencia de Inventarios', 400, 9, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInv', null, '60', '0350', '001' UNION ALL
    --SELECT N'600350000', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', null, '60', '0350', '001' UNION ALL
	
    SELECT N'600350000', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600350000', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_perimes', null, '60', '0350', '001' UNION ALL
	SELECT N'600350000', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes', null, '60', '0350', '001' UNION ALL
	SELECT N'600350000', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_historico', null, '60', '0350', '001' UNION ALL
	SELECT N'600350000', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes_inioper', null, '60', '0350', '001' UNION ALL
	SELECT N'600350000', N'1', 513, N'Constantes Generales', 500,13, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Form_ConstantesGenerales', null, '60', '0350', '001' UNION ALL
	SELECT N'600350000', N'1', 514, N'Ajuste de Inventario', 500,14, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_ajuste_inventario', null, '60', '0350', '001' 	
    COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 19.....Done!', 10, 1) WITH NOWAIT; 



	/*** MODULO ALMACENES  BORDADOS OPERADOR **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600350001', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600350001', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', '10000', '60', '0350', '001' UNION ALL
    SELECT N'600350001', N'1', 102, N'Motivo Internos', 100, 9, 2, NULL, 1, N'Generales.Frm_mottrasladoint', '10000', '60', '0350', '001' UNION ALL
    --SELECT N'600350001', N'1', 103, N'Centro costo', 100, 9, 2, NULL, 1, N'Generales.Frm_centrocostos', '10000', '60', '0350', '001' UNION ALL
    SELECT N'600350001', N'1', 104, N'Tipo de cambio',100, 9, 2, NULL, 1, N'Generales.Frm_tipocambio', '10000', '60', '0350', '001' UNION ALL

    SELECT N'600350001', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600350001', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', null, '60', '0350', '001' UNION ALL
	SELECT N'600350001', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600350001', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', '10000', '60', '0350', '001' UNION ALL
	SELECT N'600350001', N'1', 205, N'Digitacion Inventariado', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_digitacion_inv', '10000', '60', '0350', '001' UNION ALL
	--SELECT N'600350001', N'1', 206, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', null, '60', '0350', '001' UNION ALL
    --SELECT N'600350001', N'1', 207, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra', '00000', null, null, null UNION ALL
	
    SELECT N'600350001', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600350001', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', '10000', '60', '0350', '001' UNION ALL
	SELECT N'600350001', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', '10000', '60', '0350', '001' UNION ALL
	SELECT N'600350001', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productostock', '10000', '60', '0350', '001' UNION ALL
	--SELECT N'600350001', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', '10000', '60', '0350', '001' UNION ALL
	SELECT N'600350001', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', '10000', '60', '0350', '001' UNION ALL
	--SELECT N'600350001', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', '10000', '60', '0350', '001' UNION ALL
	SELECT N'600350001', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', '10000', '60', '0350', '001' UNION ALL
	SELECT N'600350001', N'1', 408, N'Toma de Inventario', 400, 8, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_TomaInventario', '10000', '60', '0350', '001' UNION ALL
	SELECT N'600350001', N'1', 409, N'Diferencia de Inventarios', 400, 9, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInv', '10000', '60', '0350', '001' UNION ALL
    --SELECT N'600350001', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', '10000', '60', '0350', '001' UNION ALL
	
    SELECT N'600350001', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600350001', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_perimes', '10000', '60', '0350', '001' UNION ALL
	SELECT N'600350001', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes', '10000', '60', '0350', '001' UNION ALL
	SELECT N'600350001', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_historico', '10000', '60', '0350', '001' UNION ALL
	SELECT N'600350001', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes_inioper', '10000', '60', '0350', '001' UNION ALL
	SELECT N'600350001', N'1', 513, N'Constantes Generales', 500,13, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Form_ConstantesGenerales', '10000', '60', '0350', '001' UNION ALL
	SELECT N'600350001', N'1', 514, N'Ajuste de Inventario', 500,14, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_ajuste_inventario', '10000', '60', '0350', '001' 
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 20.....Done!', 10, 1) WITH NOWAIT;



	/*** MODULO ALMACENES  CORREAS SUPERVISOR **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma] , [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600360000', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600360000', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', null, '60', '0360', '001' UNION ALL
    SELECT N'600360000', N'1', 102, N'Motivo Internos', 100, 9, 2, NULL, 1, N'Generales.Frm_mottrasladoint', null, '60', '0360', '001' UNION ALL
    --SELECT N'600360000', N'1', 103, N'Centro costo', 100, 9, 2, NULL, 1, N'Generales.Frm_centrocostos', null, '60', '0360', '001' UNION ALL
    SELECT N'600360000', N'1', 104, N'Tipo de cambio',100, 9, 2, NULL, 1, N'Generales.Frm_tipocambio', null, '60', '0360', '001' UNION ALL
    --SELECT N'600360000', N'1', 105, N'Sys Dominio', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_dominio', null, '60', '0360', '001' UNION ALL
    --SELECT N'600360000', N'1', 106, N'Sys Módulo', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_modulo', null, '60', '0360', '001' UNION ALL
    --SELECT N'600360000', N'1', 107, N'Sys Local', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_local', null, '60', '0360', '001' UNION ALL
    SELECT N'600360000', N'1', 108, N'Tipos de Documentos', 100, 9, 2, NULL, 1, N'Generales.Frm_modulo_local_tipodoc', null, '60', '0360', '001' UNION ALL
    SELECT N'600360000', N'1', 109, N'Cond. de Pago', 100, 9, 2, NULL, 1, N'Generales.Frm_condpago', null, '60', '0360', '001' UNION ALL
    --SELECT N'600360000', N'1', 110, N'Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_usuarios', null, '60', '0360', '001' UNION ALL
    --SELECT N'600360000', N'1', 111, N'Adm. Usuarios x perfil x local',100, 9, 2, NULL, 1, N'Generales.Frm_usuarios_perfil_local', null, '60', '0360', '001' UNION ALL
	--SELECT N'600360000', N'1', 112, N'Panel de Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_usuarios_panel', null, '60', '0360', '001' UNION ALL
    --SELECT N'600360000', N'1', 113, N'Menú de Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_perfilitems', null, '60', '0360', '001' UNION ALL
    SELECT N'600360000', N'1', 114, N'Unidad de Medida', 100, 9, 2, NULL, 1, N'Generales.Frm_UndMedida', null, '60', '0360', '001' UNION ALL
	SELECT N'600360000', N'1', 115, N'Equivalencia', 100, 9, 2, NULL, 1, N'Generales.Frm_Equivalencia', null, '60', '0360', '001' UNION ALL
	
	
    SELECT N'600360000', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600360000', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', null, '60', '0360', '001' UNION ALL
	SELECT N'600360000', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600360000', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', null, '60', '0360', '001' UNION ALL
	SELECT N'600360000', N'1', 205, N'Digitacion Inventariado', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_digitacion_inv', null, '60', '0360', '001' UNION ALL
	--SELECT N'600360000', N'1', 206, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', null, '60', '0360', '001' UNION ALL
    --SELECT N'600360000', N'1', 207, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra', '00000', null, null, null UNION ALL
		
    SELECT N'600360000', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600360000', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', null, '60', '0360', '001' UNION ALL
	SELECT N'600360000', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', null, '60', '0360', '001' UNION ALL
	SELECT N'600360000', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productostock', null, '60', '0360', '001' UNION ALL
	--SELECT N'600360000', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', null, '60', '0360', '001' UNION ALL
	SELECT N'600360000', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', null, '60', '0360', '001' UNION ALL
	--SELECT N'600360000', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', null, '60', '0360', '001' UNION ALL
	SELECT N'600360000', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', null, '60', '0360', '001' UNION ALL
	SELECT N'600360000', N'1', 408, N'Toma de Inventario', 400, 8, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_TomaInventario', null, '60', '0360', '001' UNION ALL
	SELECT N'600360000', N'1', 409, N'Diferencia de Inventarios', 400, 9, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInv', null, '60', '0360', '001' UNION ALL
    --SELECT N'600360000', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', null, '60', '0360', '001' UNION ALL
	
    SELECT N'600360000', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600360000', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_perimes', null, '60', '0360', '001' UNION ALL
	SELECT N'600360000', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes', null, '60', '0360', '001' UNION ALL
	SELECT N'600360000', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_historico', null, '60', '0360', '001' UNION ALL
	SELECT N'600360000', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes_inioper', null, '60', '0360', '001' UNION ALL
	SELECT N'600360000', N'1', 513, N'Constantes Generales', 500,13, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Form_ConstantesGenerales', null, '60', '0360', '001' UNION ALL
	SELECT N'600360000', N'1', 514, N'Ajuste de Inventario', 500,14, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_ajuste_inventario', null, '60', '0360', '001' 	
    COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 21.....Done!', 10, 1) WITH NOWAIT; 



	/*** MODULO ALMACENES  CORREAS OPERADOR **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600360001', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600360001', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', '10000', '60', '0360', '001' UNION ALL
    SELECT N'600360001', N'1', 102, N'Motivo Internos', 100, 9, 2, NULL, 1, N'Generales.Frm_mottrasladoint', '10000', '60', '0360', '001' UNION ALL
    --SELECT N'600360001', N'1', 103, N'Centro costo', 100, 9, 2, NULL, 1, N'Generales.Frm_centrocostos', '10000', '60', '0360', '001' UNION ALL
    SELECT N'600360001', N'1', 104, N'Tipo de cambio',100, 9, 2, NULL, 1, N'Generales.Frm_tipocambio', '10000', '60', '0360', '001' UNION ALL

    SELECT N'600360001', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600360001', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', null, '60', '0360', '001' UNION ALL
	SELECT N'600360001', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600360001', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', '10000', '60', '0360', '001' UNION ALL
	SELECT N'600360001', N'1', 205, N'Digitacion Inventariado', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_digitacion_inv', '10000', '60', '0360', '001' UNION ALL
	--SELECT N'600360001', N'1', 206, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', null, '60', '0360', '001' UNION ALL
    --SELECT N'600360001', N'1', 207, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra', '00000', null, null, null UNION ALL
		
    SELECT N'600360001', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600360001', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', '10000', '60', '0360', '001' UNION ALL
	SELECT N'600360001', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', '10000', '60', '0360', '001' UNION ALL
	SELECT N'600360001', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productostock', '10000', '60', '0360', '001' UNION ALL
	--SELECT N'600360001', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', '10000', '60', '0360', '001' UNION ALL
	SELECT N'600360001', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', '10000', '60', '0360', '001' UNION ALL
	--SELECT N'600360001', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', '10000', '60', '0360', '001' UNION ALL
	SELECT N'600360001', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', '10000', '60', '0360', '001' UNION ALL
	SELECT N'600360001', N'1', 408, N'Toma de Inventario', 400, 8, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_TomaInventario', '10000', '60', '0360', '001' UNION ALL
	SELECT N'600360001', N'1', 409, N'Diferencia de Inventarios', 400, 9, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInv', '10000', '60', '0360', '001' UNION ALL
    --SELECT N'600360001', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', '10000', '60', '0360', '001' UNION ALL
	
    SELECT N'600360001', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600360001', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_perimes', '10000', '60', '0360', '001' UNION ALL
	SELECT N'600360001', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes', '10000', '60', '0360', '001' UNION ALL
	SELECT N'600360001', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_historico', '10000', '60', '0360', '001' UNION ALL
	SELECT N'600360001', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes_inioper', '10000', '60', '0360', '001' UNION ALL
	SELECT N'600360001', N'1', 513, N'Constantes Generales', 500,13, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Form_ConstantesGenerales', '10000', '60', '0360', '001' UNION ALL
	SELECT N'600360001', N'1', 514, N'Ajuste de Inventario', 500,14, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_ajuste_inventario', '10000', '60', '0360', '001' 
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 22.....Done!', 10, 1) WITH NOWAIT;




		/*** MODULO ALMACENES  INSUMOS QUIMICOS - SUPERVISOR **/
	BEGIN TRANSACTION; 
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma] , [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600370000', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600370000', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', null, '60', '0370', '001' UNION ALL
    SELECT N'600370000', N'1', 102, N'Motivo Internos', 100, 9, 2, NULL, 1, N'Generales.Frm_mottrasladoint', null, '60', '0370', '001' UNION ALL
    --SELECT N'600370000', N'1', 103, N'Centro costo', 100, 9, 2, NULL, 1, N'Generales.Frm_centrocostos', null, '60', '0370', '001' UNION ALL
    SELECT N'600370000', N'1', 104, N'Tipo de cambio',100, 9, 2, NULL, 1, N'Generales.Frm_tipocambio', null, '60', '0370', '001' UNION ALL
    --SELECT N'600370000', N'1', 105, N'Sys Dominio', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_dominio', null, '60', '0370', '001' UNION ALL
    --SELECT N'600370000', N'1', 106, N'Sys Módulo', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_modulo', null, '60', '0370', '001' UNION ALL
    --SELECT N'600370000', N'1', 107, N'Sys Local', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_local', null, '60', '0370', '001' UNION ALL
    SELECT N'600370000', N'1', 108, N'Tipos de Documentos', 100, 9, 2, NULL, 1, N'Generales.Frm_modulo_local_tipodoc', null, '60', '0370', '001' UNION ALL
    SELECT N'600370000', N'1', 109, N'Cond. de Pago', 100, 9, 2, NULL, 1, N'Generales.Frm_condpago', null, '60', '0370', '001' UNION ALL
    --SELECT N'600370000', N'1', 110, N'Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_usuarios', null, '60', '0370', '001' UNION ALL
    --SELECT N'600370000', N'1', 111, N'Adm. Usuarios x perfil x local',100, 9, 2, NULL, 1, N'Generales.Frm_usuarios_perfil_local', null, '60', '0370', '001' UNION ALL
	--SELECT N'600370000', N'1', 112, N'Panel de Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_usuarios_panel', null, '60', '0370', '001' UNION ALL
    --SELECT N'600370000', N'1', 113, N'Menú de Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_perfilitems', null, '60', '0370', '001' UNION ALL
    SELECT N'600370000', N'1', 114, N'Unidad de Medida', 100, 9, 2, NULL, 1, N'Generales.Frm_UndMedida', null, '60', '0370', '001' UNION ALL
	SELECT N'600370000', N'1', 115, N'Equivalencia', 100, 9, 2, NULL, 1, N'Generales.Frm_Equivalencia', null, '60', '0370', '001' UNION ALL
	
	
    SELECT N'600370000', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600370000', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', null, '60', '0370', '001' UNION ALL
	SELECT N'600370000', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600370000', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', null, '60', '0370', '001' UNION ALL
	SELECT N'600370000', N'1', 205, N'Digitacion Inventariado', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_digitacion_inv', null, '60', '0370', '001' UNION ALL
	--SELECT N'600370000', N'1', 206, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', null, '60', '0370', '001' UNION ALL
    --SELECT N'600370000', N'1', 207, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra', '00000', null, null, null UNION ALL
		
    SELECT N'600370000', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600370000', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', null, '60', '0370', '001' UNION ALL
	SELECT N'600370000', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', null, '60', '0370', '001' UNION ALL
	SELECT N'600370000', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productostock', null, '60', '0370', '001' UNION ALL
	--SELECT N'600370000', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', null, '60', '0370', '001' UNION ALL
	SELECT N'600370000', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', null, '60', '0370', '001' UNION ALL
	--SELECT N'600370000', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', null, '60', '0370', '001' UNION ALL
	SELECT N'600370000', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', null, '60', '0370', '001' UNION ALL
	SELECT N'600370000', N'1', 408, N'Toma de Inventario', 400, 8, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_TomaInventario', null, '60', '0370', '001' UNION ALL
	SELECT N'600370000', N'1', 409, N'Diferencia de Inventarios', 400, 9, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInv', null, '60', '0370', '001' UNION ALL
    --SELECT N'600370000', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', null, '60', '0370', '001' UNION ALL
	SELECT N'600370000', N'1', 412, N'Consumos de Articulos', 400, 12, 1, NULL, 1, N'D60ALMACEN.Frm_reporte_consumo', null, '60', '0370', '001' UNION ALL
    
    
	
    SELECT N'600370000', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600370000', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_perimes', null, '60', '0370', '001' UNION ALL
	SELECT N'600370000', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes', null, '60', '0370', '001' UNION ALL
	SELECT N'600370000', N'1', 511, N'Reorganización Total', 500,11, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganizacion_total', null, '60', '0370', '001' UNION ALL
	--SELECT N'600370000', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_historico', null, '60', '0370', '001' UNION ALL
	SELECT N'600370000', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes_inioper', null, '60', '0370', '001' UNION ALL
	SELECT N'600370000', N'1', 513, N'Constantes Generales', 500,13, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Form_ConstantesGenerales', null, '60', '0370', '001' UNION ALL
	SELECT N'600370000', N'1', 514, N'Generar Archivo Trabajo', 500, 14, 3, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_GeneraArchivoWork', null, '60', '0370', '001' UNION ALL
	SELECT N'600370000', N'1', 515, N'Ajuste de Inventario', 500,15, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_ajuste_inventario', null, '60', '0370', '001' UNION ALL
	SELECT N'600370000', N'1', 516, N'Reorganiza Costo-Ultimo', 500,16, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_Reorg_CostUlt', null, '60', '0370', '001' 	 	
    COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 23.....Done!', 10, 1) WITH NOWAIT; 



	/*** MODULO ALMACENES  INSUMOS QUIMICOS  OPERADOR **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600370001', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600370001', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', '10000', '60', '0370', '001' UNION ALL
    SELECT N'600370001', N'1', 102, N'Motivo Internos', 100, 9, 2, NULL, 1, N'Generales.Frm_mottrasladoint', '10000', '60', '0370', '001' UNION ALL
    --SELECT N'600370001', N'1', 103, N'Centro costo', 100, 9, 2, NULL, 1, N'Generales.Frm_centrocostos', '10000', '60', '0370', '001' UNION ALL
    SELECT N'600370001', N'1', 104, N'Tipo de cambio',100, 9, 2, NULL, 1, N'Generales.Frm_tipocambio', '10000', '60', '0370', '001' UNION ALL
    	
    SELECT N'600370001', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600370001', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', null, '60', '0370', '001' UNION ALL
	SELECT N'600370001', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600370001', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', '00000', '60', '0370', '001' UNION ALL
	SELECT N'600370001', N'1', 205, N'Digitacion Inventariado', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_digitacion_inv', '10000', '60', '0370', '001' UNION ALL
	--SELECT N'600370001', N'1', 206, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', null, '60', '0370', '001' UNION ALL
    --SELECT N'600370001', N'1', 207, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra', '00000', null, null, null UNION ALL

    SELECT N'600370001', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600370001', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', '10000', '60', '0370', '001' UNION ALL
	SELECT N'600370001', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', '10000', '60', '0370', '001' UNION ALL
	SELECT N'600370001', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productostock', '10000', '60', '0370', '001' UNION ALL
	--SELECT N'600370001', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', '10000', '60', '0370', '001' UNION ALL
	SELECT N'600370001', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', '10000', '60', '0370', '001' UNION ALL
	--SELECT N'600370001', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', '10000', '60', '0370', '001' UNION ALL
	SELECT N'600370001', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', '10000', '60', '0370', '001' UNION ALL
	SELECT N'600370001', N'1', 408, N'Toma de Inventario', 400, 8, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_TomaInventario', '10000', '60', '0370', '001' UNION ALL
	SELECT N'600370001', N'1', 409, N'Diferencia de Inventarios', 400, 9, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInv', '10000', '60', '0370', '001' UNION ALL
    --SELECT N'600370001', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', '10000', '60', '0370', '001' UNION ALL
	SELECT N'600370001', N'1', 412, N'Consumos de Articulos', 400, 12, 1, NULL, 1, N'D60ALMACEN.Frm_reporte_consumo', null, '60', '0370', '001' UNION ALL
	
    SELECT N'600370001', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600370001', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_perimes', '10000', '60', '0370', '001' UNION ALL
	SELECT N'600370001', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes', '10000', '60', '0370', '001' UNION ALL
	SELECT N'600370001', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_historico', '10000', '60', '0370', '001' UNION ALL
	SELECT N'600370001', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes_inioper', '10000', '60', '0370', '001' UNION ALL
	SELECT N'600370001', N'1', 513, N'Constantes Generales', 500,13, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Form_ConstantesGenerales', '10000', '60', '0370', '001' UNION ALL
	SELECT N'600370001', N'1', 514, N'Ajuste de Inventario', 500,14, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_ajuste_inventario', '10000', '60', '0370', '001' UNION ALL
	SELECT N'600370001', N'1', 515, N'Reorganiza Costo-Ultimo', 500,15, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_Reorg_CostUlt', '10000', '60', '0370', '001' 
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 24.....Done!', 10, 1) WITH NOWAIT;



	/*** MODULO ALMACENES  INSUMOS QUIMICOS  VISTAS **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
   
    SELECT N'600370003', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600370003', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', null, '60', '0370', '001' UNION ALL
	SELECT N'600370003', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600370003', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', '40000', '60', '0370', '001' UNION ALL
	SELECT N'600370003', N'1', 205, N'Digitacion Inventariado', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_digitacion_inv', '40000', '60', '0370', '001' UNION ALL
	--SELECT N'600370003', N'1', 206, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', null, '60', '0370', '001' UNION ALL
    --SELECT N'600370003', N'1', 207, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra', '00000', null, null, null UNION ALL
      
    SELECT N'600370003', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600370003', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', '10000', '60', '0370', '001' UNION ALL
	SELECT N'600370003', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', '10000', '60', '0370', '001' UNION ALL
	SELECT N'600370003', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productostock', '10000', '60', '0370', '001' UNION ALL
	--SELECT N'600370003', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', '10000', '60', '0370', '001' UNION ALL
	SELECT N'600370003', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', '10000', '60', '0370', '001' UNION ALL
	--SELECT N'600370003', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', '10000', '60', '0370', '001' UNION ALL
	SELECT N'600370003', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', '10000', '60', '0370', '001' UNION ALL
	SELECT N'600370003', N'1', 408, N'Toma de Inventario', 400, 8, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_TomaInventario', '10000', '60', '0370', '001' UNION ALL
	SELECT N'600370003', N'1', 409, N'Diferencia de Inventarios', 400, 9, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInv', '10000', '60', '0370', '001' --UNION ALL
    --SELECT N'600370003', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', '10000', '60', '0330', '001' UNION ALL
        
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 7.....Done!', 10, 1) WITH NOWAIT;

	

	/*** MODULO ALMACENE MAQUINARIAS Y REPUESTOS DE SYSTEMAS ADMINISTRADOR **/
	BEGIN TRANSACTION; 
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma] , [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600500000', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600500000', N'1', 101, N'Proveedor-Cliente', 100, 1, 2, NULL, 1, N'Generales.Frm_clientesproveedores', null, '60', '0500', '001' UNION ALL
    SELECT N'600500000', N'1', 102, N'Motivo Internos', 100, 2, 2, NULL, 1, N'Generales.Frm_mottrasladoint', null, '60', '0500', '001' UNION ALL
    --SELECT N'600500000', N'1', 103, N'Centro costo', 100, 3, 2, NULL, 1, N'Generales.Frm_centrocostos', null, '60', '0500', '001' UNION ALL
    SELECT N'600500000', N'1', 104, N'Tipo de cambio',100, 4, 2, NULL, 1, N'Generales.Frm_tipocambio', null, '60', '0500', '001' UNION ALL
    --SELECT N'600500000', N'1', 105, N'Sys Dominio', 100, 5, 2, NULL, 1, N'Generales.Frm_sys_dominio', null, '60', '0500', '001' UNION ALL
    --SELECT N'600500000', N'1', 106, N'Sys Módulo', 100, 6, 2, NULL, 1, N'Generales.Frm_sys_modulo', null, '60', '0500', '001' UNION ALL
    --SELECT N'600500000', N'1', 107, N'Sys Local', 100, 7, 2, NULL, 1, N'Generales.Frm_sys_local', null, '60', '0500', '001' UNION ALL
    SELECT N'600500000', N'1', 108, N'Tipos de Documentos', 100, 8, 2, NULL, 1, N'Generales.Frm_modulo_local_tipodoc', null, '60', '0500', '001' UNION ALL
    SELECT N'600500000', N'1', 109, N'Cond. de Pago', 100, 9, 2, NULL, 1, N'Generales.Frm_condpago', null, '60', '0500', '001' UNION ALL
    --SELECT N'600500000', N'1', 110, N'Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_usuarios', null, '60', '0500', '001' UNION ALL
    --SELECT N'600500000', N'1', 111, N'Adm. Usuarios x perfil x local',100, 9, 2, NULL, 1, N'Generales.Frm_usuarios_perfil_local', null, '60', '0500', '001' UNION ALL
	--SELECT N'600500000', N'1', 112, N'Panel de Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_usuarios_panel', null, '60', '0500', '001' UNION ALL
    --SELECT N'600500000', N'1', 113, N'Menú de Usuario', 100, 13, 2, NULL, 1, N'Generales.Frm_perfilitems', null, '60', '0500', '001' UNION ALL
    SELECT N'600500000', N'1', 114, N'Unidad de Medida', 100, 9, 2, NULL, 1, N'Generales.Frm_UndMedida', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 115, N'Equivalencia', 100, 9, 2, NULL, 1, N'Generales.Frm_Equivalencia', null, '60', '0500', '001' UNION ALL
	
	
	
    SELECT N'600500000', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600500000', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 203, N'Documentos de Almacén', 200, 3, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600500000', N'1', 204, N'Emitir Documento', 203, 4, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 205, N'Digitacion Inventariado', 203, 5, 1, NULL, 1, N'D60ALMACEN.Frm_digitacion_inv', null, '60', '0500', '001' UNION ALL
	--SELECT N'600500000', N'1', 206, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', null, '60', '0500', '001' UNION ALL
    --SELECT N'600500000', N'1', 207, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra', '00000', null, null, null UNION ALL
	
	SELECT N'600500000', N'1', 300, N'Catálogo', 300, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600500000', N'1', 301, N'Colores', 300, 1, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_color', null, '60', '0500', '001' UNION ALL
	--SELECT N'600500000', N'1', 302, N'Estructura', 300, 3, 2, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_estructura', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 303, N'Lineas', 300, 3, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_linea', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 304, N'Grupos', 300, 4, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_grupo', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 305, N'Artículos', 300, 5, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_subgrupo', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 306, N'Producto', 300, 6, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_producto', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 307, N'Producto x Estacion', 300, 7, 2, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_est', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 308, N'Persona x Estacion', 300, 8, 2, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_persona_cencos', null, '60', '0500', '001' UNION ALL  
	SELECT N'600500000', N'1', 309, N'Genera Archivo Trabajo', 300, 9, 2, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_GeneraArchivoWork', null, '60', '0500', '001' UNION ALL
	
    SELECT N'600500000', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600500000', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productostock', null, '60', '0500', '001' UNION ALL
	--SELECT N'600500000', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', null, '60', '0500', '001' UNION ALL
	--SELECT N'600500000', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 408, N'Toma de Inventario', 400, 8, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_TomaInventario', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 409, N'Diferencia de Inventarios', 400, 9, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInv', null, '60', '0500', '001' UNION ALL
    --SELECT N'600500000', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 410, N'Productos x CCosto', 400, 10, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productoCencos', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 411, N'Ordenes Pendientes', 400, 11, 1, NULL, 1, N'DL0Logistica.Frm_reporte_ordcompra', null, '60', '0500', '001' UNION ALL	
	SELECT N'600500000', N'1', 412, N'Requerimiento de  O/C', 400, 12, 1, NULL, 1, N'D60ALMACEN.REPORTES.Frm_RequerimientoOC2', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 413, N'Historial x Estaciones', 400, 13, 1, NULL, 1, N'D60ALMACEN.Frm_reporte_historialxestacion', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 414, N'Historial x Productos', 400, 14, 1, NULL, 1, N'D60ALMACEN.Frm_reporte_historialxproductos', null, '60', '0500', '001' UNION ALL
		    
    SELECT N'600500000', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600500000', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_perimes', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_historico', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes_inioper', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 513, N'Constantes Generales', 500,13, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Form_ConstantesGenerales', null, '60', '0500', '001' UNION ALL
	SELECT N'600500000', N'1', 514, N'Ajuste de Inventario', 500,14, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_ajuste_inventario', null, '60', '0500', '001'  UNION ALL
	SELECT N'600500000', N'1', 515, N'Reorganiza Costo-Ultimo', 500,15, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_Reorg_CostUlt', null, '60', '0500', '001' 	 	
	
    COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 23.....Done!', 10, 1) WITH NOWAIT;    

	/*** MODULO ALMACENE MAQUINARIAS Y REPUESTOS DE SYSTEMAS OPERADOR **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma] , [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600500001', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600500001', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', null, '60', '0500', '001' UNION ALL
    SELECT N'600500001', N'1', 102, N'Motivo Internos', 100, 9, 2, NULL, 1, N'Generales.Frm_mottrasladoint', null, '60', '0500', '001' UNION ALL
    --SELECT N'600500001', N'1', 103, N'Centro costo', 100, 9, 2, NULL, 1, N'Generales.Frm_centrocostos', null, '60', '0500', '001' UNION ALL
    SELECT N'600500001', N'1', 104, N'Tipo de cambio',100, 9, 2, NULL, 1, N'Generales.Frm_tipocambio', null, '60', '0500', '001' UNION ALL
    
    SELECT N'600500001', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600500000', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', null, '60', '0500', '001' UNION ALL
	SELECT N'600500001', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600500001', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', null, '60', '0500', '001' UNION ALL
	--SELECT N'600500000', N'1', 205, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', null, '60', '0500', '001' UNION ALL
    SELECT N'600500001', N'1', 206, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra', '00000', null, null, null UNION ALL
	
	SELECT N'600500001', N'1', 300, N'Catálogo', 300, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600500001', N'1', 301, N'Colores', 300, 2, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_color', null, '60', '0500', '001' UNION ALL
	--SELECT N'600500000', N'1', 302, N'Estructura', 300, 3, 2, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_estructura', null, '60', '0500', '001' UNION ALL
	SELECT N'600500001', N'1', 303, N'Lineas', 300, 4, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_linea', null, '60', '0500', '001' UNION ALL
	SELECT N'600500001', N'1', 304, N'Proveedores', 300, 5, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_grupo', null, '60', '0500', '001' UNION ALL
	SELECT N'600500001', N'1', 305, N'Artículos', 300, 6, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_subgrupo', null, '60', '0500', '001' UNION ALL
	--SELECT N'600500001', N'1', 306, N'Producto x Estacion', 300, 6, 2, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_est', null, '60', '0500', '001' UNION ALL	
	SELECT N'600500001', N'1', 307, N'Producto', 300, 7, 2, NULL, 1, N'DL0Logistica.Catalogo.Frm_producto', null, '60', '0500', '001' UNION ALL
	SELECT N'600500001', N'1', 308, N'Persona x Estacion', 300, 8, 2, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_persona_cencos', null, '60', '0500', '001' UNION ALL  
	
    SELECT N'600500001', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600500001', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', null, '60', '0500', '001' UNION ALL
	SELECT N'600500001', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', null, '60', '0500', '001' UNION ALL
	SELECT N'600500001', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productostock', null, '60', '0500', '001' UNION ALL
	--SELECT N'600500000', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', null, '60', '0500', '001' UNION ALL
	SELECT N'600500001', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', null, '60', '0500', '001' UNION ALL
	--SELECT N'600500000', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', null, '60', '0500', '001' UNION ALL
	--SELECT N'600500001', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', null, '60', '0500', '001' UNION ALL
    --SELECT N'600500000', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', null, '60', '0500', '001' UNION ALL	
	SELECT N'600500001', N'1', 410, N'Productos x CCosto', 400, 10, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productoCencos', null, '60', '0500', '001' UNION ALL
	SELECT N'600500001', N'1', 411, N'Ordenes Pendientes', 400, 11, 1, NULL, 1, N'DL0Logistica.Frm_reporte_ordcompra', null, '60', '0500', '001' UNION ALL	
	SELECT N'600500001', N'1', 412, N'Requerimiento de  O/C', 400, 12, 1, NULL, 1, N'D60ALMACEN.REPORTES.Frm_RequerimientoOC2', null, '60', '0500', '001' UNION ALL
	--SELECT N'600500001', N'1', 413, N'Kardex por Estaciones', 400, 13, 1, NULL, 1, N'D60ALMACEN.Frm_reporte_kardexestacion', null, '60', '0500', '001' UNION ALL
    SELECT N'600500001', N'1', 414, N'Historial x Estaciones', 400, 14, 1, NULL, 1, N'D60ALMACEN.Frm_reporte_historialxestacion', null, '60', '0500', '001' UNION ALL
	SELECT N'600500001', N'1', 415, N'Historial x Productos', 400, 15, 1, NULL, 1, N'D60ALMACEN.Frm_reporte_historialxproductos', null, '60', '0500', '001' UNION ALL
	
	
	
    SELECT N'600500001', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600500001', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_perimes', null, '60', '0500', '001' UNION ALL
	--SELECT N'600500001', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes', null, '60', '0500', '001' UNION ALL
	SELECT N'600500001', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_historico', null, '60', '0500', '001'-- UNION ALL
	--SELECT N'600500001', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.Frm_cierre_perimes_inioper', null, '60', '0500', '001'
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 26.....Done!', 10, 1) WITH NOWAIT;


		/*** MODULO ALMACENE MAQUINARIAS Y REPUESTOS DE SYSTEMAS OPERADOR 2 **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma] , [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])       
    SELECT N'600500004', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL	
	SELECT N'600500004', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600500004', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', null, '60', '0500', '001' UNION ALL	
					 
    SELECT N'600500004', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL   
    SELECT N'600500004', N'1', 414, N'Historial x Estaciones', 400, 14, 1, NULL, 1, N'D60ALMACEN.Frm_reporte_historialxestacion', null, '60', '0500', '001' UNION ALL
	SELECT N'600500004', N'1', 415, N'Historial x Productos', 400, 15, 1, NULL, 1, N'D60ALMACEN.Frm_reporte_historialxproductos', null, '60', '0500', '001'	
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 26.....Done!', 10, 1) WITH NOWAIT;




	/*** MODULO ALMACENE MAQUINARIAS Y REPUESTOS DE SYSTEMAS CONSULTAR **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma] , [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])   				 
    SELECT N'600500003', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600500003', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', null, '60', '0500', '001' UNION ALL
	SELECT N'600500003', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', null, '60', '0500', '001' UNION ALL
	SELECT N'600500003', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productostock', null, '60', '0500', '001' UNION ALL	
	SELECT N'600500003', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', null, '60', '0500', '001' UNION ALL	
	SELECT N'600500003', N'1', 410, N'Productos x CCosto', 400, 10, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productoCencos', null, '60', '0500', '001' UNION ALL
	SELECT N'600500003', N'1', 411, N'Ordenes Pendientes', 400, 11, 1, NULL, 1, N'DL0Logistica.Frm_reporte_ordcompra', null, '60', '0500', '001' UNION ALL	
	SELECT N'600500003', N'1', 412, N'Requerimiento de  O/C', 400, 12, 1, NULL, 1, N'D60ALMACEN.REPORTES.Frm_RequerimientoOC2', null, '60', '0500', '001' UNION ALL
    SELECT N'600500003', N'1', 414, N'Historial x Estaciones', 400, 14, 1, NULL, 1, N'D60ALMACEN.Frm_reporte_historialxestacion', null, '60', '0500', '001' UNION ALL
	SELECT N'600500003', N'1', 415, N'Historial x Productos', 400, 15, 1, NULL, 1, N'D60ALMACEN.Frm_reporte_historialxproductos', null, '60', '0500', '001' --UNION ALL			  
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 26.....Done!', 10, 1) WITH NOWAIT;



	/*** MODULO ALMACENES  MAQUINARIAS Y REPARACIONES ELECTRICOS SUPERVISOR **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma] , [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600510000', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600510000', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', null, '60', '0510', '001' UNION ALL
    SELECT N'600510000', N'1', 102, N'Motivo Internos', 100, 9, 2, NULL, 1, N'Generales.Frm_mottrasladoint', null, '60', '0510', '001' UNION ALL
    --SELECT N'600510000', N'1', 103, N'Centro costo', 100, 9, 2, NULL, 1, N'Generales.Frm_centrocostos', null, '60', '0510', '001' UNION ALL
    SELECT N'600510000', N'1', 104, N'Tipo de cambio',100, 9, 2, NULL, 1, N'Generales.Frm_tipocambio', null, '60', '0510', '001' UNION ALL
    SELECT N'600510000', N'1', 105, N'Sys Dominio', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_dominio', null, '60', '0510', '001' UNION ALL
    SELECT N'600510000', N'1', 106, N'Sys Módulo', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_modulo', null, '60', '0510', '001' UNION ALL
    SELECT N'600510000', N'1', 107, N'Sys Local', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_local', null, '60', '0510', '001' UNION ALL
    SELECT N'600510000', N'1', 108, N'Tipos de Documentos', 100, 9, 2, NULL, 1, N'Generales.Frm_modulo_local_tipodoc', null, '60', '0510', '001' UNION ALL
    SELECT N'600510000', N'1', 109, N'Cond. de Pago', 100, 9, 2, NULL, 1, N'Generales.Frm_condpago', null, '60', '0510', '001' UNION ALL
    --SELECT N'600510000', N'1', 110, N'Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_usuarios', null, '60', '0510', '001' UNION ALL
    --SELECT N'600510000', N'1', 111, N'Adm. Usuarios x perfil x local',100, 9, 2, NULL, 1, N'Generales.Frm_usuarios_perfil_local', null, '60', '0510', '001' UNION ALL
	--SELECT N'600510000', N'1', 112, N'Panel de Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_usuarios_panel', null, '60', '0510', '001' UNION ALL
    SELECT N'600510000', N'1', 113, N'Menú de Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_perfilitems', null, '60', '0510', '001' UNION ALL
	
    SELECT N'600510000', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600510000', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', null, '60', '0510', '001' UNION ALL
	SELECT N'600510000', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600510000', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', null, '60', '0510', '001' UNION ALL
	SELECT N'600510000', N'1', 205, N'Digitacion Inventariado', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_digitacion_inv', null, '60', '0510', '001' UNION ALL
	--SELECT N'600510000', N'1', 206, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', null, '60', '0510', '001' UNION ALL
    --SELECT N'600510000', N'1', 207, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra', '00000', null, null, null UNION ALL

    SELECT N'600510000', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600510000', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', null, '60', '0510', '001' UNION ALL
	SELECT N'600510000', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', null, '60', '0510', '001' UNION ALL
	SELECT N'600510000', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productostock', null, '60', '0510', '001' UNION ALL
	--SELECT N'600510000', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', null, '60', '0510', '001' UNION ALL
	SELECT N'600510000', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', null, '60', '0510', '001' UNION ALL
	--SELECT N'600510000', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', null, '60', '0510', '001' UNION ALL
	SELECT N'600510000', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', null, '60', '0510', '001' UNION ALL
	SELECT N'600510000', N'1', 408, N'Toma de Inventario', 400, 8, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_TomaInventario', null, '60', '0510', '001' UNION ALL
	SELECT N'600510000', N'1', 409, N'Diferencia de Inventarios', 400, 9, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInv', null, '60', '0510', '001' UNION ALL
    --SELECT N'600510000', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', null, '60', '0510', '001' UNION ALL
	SELECT N'600510000', N'1', 410, N'Productos x CCosto', 400, 10, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productoCencos', null, '60', '0510', '001' UNION ALL
	SELECT N'600510000', N'1', 411, N'Ordenes Pendientes', 400, 11, 1, NULL, 1, N'DL0Logistica.Frm_reporte_ordcompra', null, '60', '0510', '001' UNION ALL	
	SELECT N'600510000', N'1', 412, N'Requerimiento de  O/C', 400, 12, 1, NULL, 1, N'D60ALMACEN.REPORTES.Frm_RequerimientoOC', null, '60', '0510', '001' UNION ALL

    SELECT N'600510000', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600510000', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reorganiza_perimes', null, '60', '0510', '001' UNION ALL
	SELECT N'600510000', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.Frm_cierre_perimes', null, '60', '0510', '001' UNION ALL
	SELECT N'600510000', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.Frm_reorganiza_historico', null, '60', '0510', '001' UNION ALL
	SELECT N'600510000', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.Frm_cierre_perimes_inioper', null, '60', '0510', '001' UNION ALL
	SELECT N'600510000', N'1', 513, N'Constantes Generales', 500,13, 3, NULL, 1, N'D60ALMACEN.Form_ConstantesGenerales', null, '60', '0510', '001' UNION ALL
	SELECT N'600510000', N'1', 514, N'Ajuste de Inventario', 500,14, 3, NULL, 1, N'D60ALMACEN.Frm_ajuste_inventario', null, '60', '0510', '001' 	
    COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 27.....Done!', 10, 1) WITH NOWAIT; 


	/*** MODULO ALMACENES  MAQUINARIAS Y REPARACIONES ELECTRICOS OPERADOR **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600510001', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600510001', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', '10000', '60', '0510', '001' UNION ALL
    SELECT N'600510001', N'1', 102, N'Motivo Internos', 100, 9, 2, NULL, 1, N'Generales.Frm_mottrasladoint', '10000', '60', '0510', '001' UNION ALL
    --SELECT N'600510001', N'1', 103, N'Centro costo', 100, 9, 2, NULL, 1, N'Generales.Frm_centrocostos', '10000', '60', '0510', '001' UNION ALL
    SELECT N'600510001', N'1', 104, N'Tipo de cambio',100, 9, 2, NULL, 1, N'Generales.Frm_tipocambio', '10000', '60', '0510', '001' UNION ALL

    SELECT N'600510001', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600510001', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', null, '60', '0510', '001' UNION ALL
	SELECT N'600510001', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600510001', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', '10000', '60', '0510', '001' UNION ALL
	SELECT N'600510001', N'1', 205, N'Digitacion Inventariado', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_digitacion_inv', '10000', '60', '0510', '001' UNION ALL
	--SELECT N'600510001', N'1', 206, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', null, '60', '0510', '001' UNION ALL
    --SELECT N'600510001', N'1', 207, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra', '00000', null, null, null UNION ALL
	
    SELECT N'600510001', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600510001', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', '10000', '60', '0510', '001' UNION ALL
	SELECT N'600510001', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', '10000', '60', '0510', '001' UNION ALL
	SELECT N'600510001', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productostock', '10000', '60', '0510', '001' UNION ALL
	--SELECT N'600510001', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', '10000', '60', '0510', '001' UNION ALL
	SELECT N'600510001', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', '10000', '60', '0510', '001' UNION ALL
	--SELECT N'600510001', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', '10000', '60', '0510', '001' UNION ALL
	SELECT N'600510001', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', '10000', '60', '0510', '001' UNION ALL
	SELECT N'600510001', N'1', 408, N'Toma de Inventario', 400, 8, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_TomaInventario', '10000', '60', '0510', '001' UNION ALL
	SELECT N'600510001', N'1', 409, N'Diferencia de Inventarios', 400, 9, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInv', '10000', '60', '0510', '001' UNION ALL
    --SELECT N'600510001', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', '10000', '60', '0510', '001' UNION ALL
	SELECT N'600510001', N'1', 410, N'Productos x CCosto', 400, 10, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productoCencos', '10000', '60', '0510', '001' UNION ALL
	SELECT N'600510001', N'1', 411, N'Ordenes Pendientes', 400, 11, 1, NULL, 1, N'DL0Logistica.Frm_reporte_ordcompra', null, '60', '0510', '001' UNION ALL	
	SELECT N'600510001', N'1', 412, N'Requerimiento de  O/C', 400, 12, 1, NULL, 1, N'D60ALMACEN.REPORTES.Frm_RequerimientoOC', null, '60', '0510', '001' UNION ALL

    SELECT N'600510001', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600510001', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reorganiza_perimes', '10000', '60', '0510', '001' UNION ALL
	SELECT N'600510001', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.Frm_cierre_perimes', '10000', '60', '0510', '001' UNION ALL
	SELECT N'600510001', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.Frm_reorganiza_historico', '10000', '60', '0510', '001' UNION ALL
	SELECT N'600510001', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.Frm_cierre_perimes_inioper', '10000', '60', '0510', '001' UNION ALL
	SELECT N'600510001', N'1', 513, N'Constantes Generales', 500,13, 3, NULL, 1, N'D60ALMACEN.Form_ConstantesGenerales', '10000', '60', '0510', '001' UNION ALL
	SELECT N'600510001', N'1', 514, N'Ajuste de Inventario', 500,14, 3, NULL, 1, N'D60ALMACEN.Frm_ajuste_inventario', '10000', '60', '0510', '001' 
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 28.....Done!', 10, 1) WITH NOWAIT;



	/*** MODULO ALMACEN  DE MAQ Y REP COSTURA SUPERVISOR **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma] , [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600520000', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600520000', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', null, '60', '0520', '001' UNION ALL
    SELECT N'600520000', N'1', 102, N'Motivo Internos', 100, 9, 2, NULL, 1, N'Generales.Frm_mottrasladoint', null, '60', '0520', '001' UNION ALL
    --SELECT N'600520000', N'1', 103, N'Centro costo', 100, 9, 2, NULL, 1, N'Generales.Frm_centrocostos', null, '60', '0520', '001' UNION ALL
    SELECT N'600520000', N'1', 104, N'Tipo de cambio',100, 9, 2, NULL, 1, N'Generales.Frm_tipocambio', null, '60', '0520', '001' UNION ALL
    --SELECT N'600520000', N'1', 105, N'Sys Dominio', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_dominio', null, '60', '0520', '001' UNION ALL
    --SELECT N'600520000', N'1', 106, N'Sys Módulo', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_modulo', null, '60', '0520', '001' UNION ALL
    --SELECT N'600520000', N'1', 107, N'Sys Local', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_local', null, '60', '0520', '001' UNION ALL
    SELECT N'600520000', N'1', 108, N'Tipos de Documentos', 100, 9, 2, NULL, 1, N'Generales.Frm_modulo_local_tipodoc', null, '60', '0520', '001' UNION ALL
    SELECT N'600520000', N'1', 109, N'Cond. de Pago', 100, 9, 2, NULL, 1, N'Generales.Frm_condpago', null, '60', '0520', '001' UNION ALL
    --SELECT N'600520000', N'1', 110, N'Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_usuarios', null, '60', '0520', '001' UNION ALL
    --SELECT N'600520000', N'1', 111, N'Adm. Usuarios x perfil x local',100, 9, 2, NULL, 1, N'Generales.Frm_usuarios_perfil_local', null, '60', '0520', '001' UNION ALL
	--SELECT N'600520000', N'1', 112, N'Panel de Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_usuarios_panel', null, '60', '0520', '001' UNION ALL
    --SELECT N'600520000', N'1', 113, N'Menú de Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_perfilitems', null, '60', '0520', '001' UNION ALL
    SELECT N'600520000', N'1', 114, N'Unidad de Medida', 100, 9, 2, NULL, 1, N'Generales.Frm_UndMedida', null, '60', '0520', '001' UNION ALL
	SELECT N'600520000', N'1', 115, N'Equivalencia', 100, 9, 2, NULL, 1, N'Generales.Frm_Equivalencia', null, '60', '0520', '001' UNION ALL
	
	
    SELECT N'600520000', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600520000', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', null, '60', '0520', '001' UNION ALL
	SELECT N'600520000', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600520000', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', null, '60', '0520', '001' UNION ALL
	SELECT N'600520000', N'1', 205, N'Digitacion Inventariado', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_digitacion_inv', null, '60', '0520', '001' UNION ALL
	--SELECT N'600520000', N'1', 206, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', null, '60', '0520', '001' UNION ALL
    --SELECT N'600520000', N'1', 207, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra', '00000', null, null, null UNION ALL
		
    SELECT N'600520000', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600520000', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', null, '60', '0520', '001' UNION ALL
	SELECT N'600520000', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', null, '60', '0520', '001' UNION ALL
	SELECT N'600520000', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productostock', null, '60', '0520', '001' UNION ALL
	--SELECT N'600520000', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', null, '60', '0520', '001' UNION ALL
	SELECT N'600520000', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', null, '60', '0520', '001' UNION ALL
	--SELECT N'600520000', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', null, '60', '0520', '001' UNION ALL
	SELECT N'600520000', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', null, '60', '0520', '001' UNION ALL
	SELECT N'600520000', N'1', 408, N'Toma de Inventario', 400, 8, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_TomaInventario', null, '60', '0520', '001' UNION ALL
	SELECT N'600520000', N'1', 409, N'Diferencia de Inventarios', 400, 9, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInv', null, '60', '0520', '001' UNION ALL
    SELECT N'600520000', N'1', 410, N'Productos x CCosto', 400, 10, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productoCencos', null, '60', '0520', '001' UNION ALL
    --SELECT N'600520000', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', null, '60', '0520', '001' UNION ALL
    SELECT N'600520000', N'1', 411, N'Ordenes Pendientes', 400, 11, 1, NULL, 1, N'DL0Logistica.Frm_reporte_ordcompra', null, '60', '0520', '001' UNION ALL	
	SELECT N'600520000', N'1', 412, N'Requerimiento de  O/C', 400, 12, 1, NULL, 1, N'D60ALMACEN.REPORTES.Frm_RequerimientoOC', null, '60', '0520', '001' UNION ALL
    
	
    SELECT N'600520000', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600520000', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reorganiza_perimes', null, '60', '0520', '001' UNION ALL
	SELECT N'600520000', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.Frm_cierre_perimes', null, '60', '0520', '001' UNION ALL
	SELECT N'600520000', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.Frm_reorganiza_historico', null, '60', '0520', '001' UNION ALL
	SELECT N'600520000', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.Frm_cierre_perimes_inioper', null, '60', '0520', '001' UNION ALL
	SELECT N'600520000', N'1', 513, N'Constantes Generales', 500,13, 3, NULL, 1, N'D60ALMACEN.Form_ConstantesGenerales', null, '60', '0520', '001' UNION ALL
	SELECT N'600520000', N'1', 514, N'Ajuste de Inventario', 500,14, 3, NULL, 1, N'D60ALMACEN.Frm_ajuste_inventario', null, '60', '0520', '001' 	
    COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 27.....Done!', 10, 1) WITH NOWAIT; 


	/*** MODULO ALMACEN  DE MAQ Y REP COSTURA OPERADOR **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600520001', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600520001', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', '10000', '60', '0520', '001' UNION ALL
    SELECT N'600520001', N'1', 102, N'Motivo Internos', 100, 9, 2, NULL, 1, N'Generales.Frm_mottrasladoint', '10000', '60', '0520', '001' UNION ALL
    --SELECT N'600520001', N'1', 103, N'Centro costo', 100, 9, 2, NULL, 1, N'Generales.Frm_centrocostos', '10000', '60', '0520', '001' UNION ALL
    SELECT N'600520001', N'1', 104, N'Tipo de cambio',100, 9, 2, NULL, 1, N'Generales.Frm_tipocambio', '10000', '60', '0520', '001' UNION ALL
    
    SELECT N'600520001', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600520001', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', null, '60', '0520', '001' UNION ALL
	SELECT N'600520001', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600520001', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', '10000', '60', '0520', '001' UNION ALL
	SELECT N'600520001', N'1', 205, N'Digitacion Inventariado', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_digitacion_inv', '10000', '60', '0520', '001' UNION ALL
	--SELECT N'600520001', N'1', 206, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', null, '60', '0520', '001' UNION ALL
    --SELECT N'600520001', N'1', 207, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra', '00000', null, null, null UNION ALL
	
    SELECT N'600520001', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600520001', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', '10000', '60', '0520', '001' UNION ALL
	SELECT N'600520001', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', '10000', '60', '0520', '001' UNION ALL
	SELECT N'600520001', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productostock', '10000', '60', '0520', '001' UNION ALL
	--SELECT N'600520001', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', '10000', '60', '0520', '001' UNION ALL
	SELECT N'600520001', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', '10000', '60', '0520', '001' UNION ALL
	--SELECT N'600520001', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', '10000', '60', '0520', '001' UNION ALL
	SELECT N'600520001', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', '10000', '60', '0520', '001' UNION ALL
	SELECT N'600520001', N'1', 408, N'Toma de Inventario', 400, 8, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_TomaInventario', '10000', '60', '0520', '001' UNION ALL
	SELECT N'600520001', N'1', 409, N'Diferencia de Inventarios', 400, 9, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInv', '10000', '60', '0520', '001' UNION ALL
    --SELECT N'600520001', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', '10000', '60', '0520', '001' UNION ALL
	SELECT N'600520001', N'1', 410, N'Productos x CCosto', 400, 10, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productoCencos', null, '60', '0520', '001' UNION ALL
	SELECT N'600520001', N'1', 411, N'Ordenes Pendientes', 400, 11, 1, NULL, 1, N'DL0Logistica.Frm_reporte_ordcompra', null, '60', '0520', '001' UNION ALL	
	SELECT N'600520001', N'1', 412, N'Requerimiento de  O/C', 400, 12, 1, NULL, 1, N'D60ALMACEN.REPORTES.Frm_RequerimientoOC', null, '60', '0520', '001' UNION ALL
	
	
    SELECT N'600520001', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600520001', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_perimes', '10000', '60', '0520', '001' UNION ALL
	SELECT N'600520001', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes', '10000', '60', '0520', '001' UNION ALL
	SELECT N'600520001', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_historico', '10000', '60', '0520', '001' UNION ALL
	SELECT N'600520001', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes_inioper', '10000', '60', '0520', '001' UNION ALL
	SELECT N'600520001', N'1', 513, N'Constantes Generales', 500,13, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Form_ConstantesGenerales', '10000', '60', '0520', '001' UNION ALL
	SELECT N'600520001', N'1', 514, N'Ajuste de Inventario', 500,14, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_ajuste_inventario', '10000', '60', '0520', '001' 
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 28.....Done!', 10, 1) WITH NOWAIT;



	/*** MODULO ALMACEN  DE VARIOS SUPERVISOR **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma] , [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600530000', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600530000', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', null, '60', '0530', '001' UNION ALL
    SELECT N'600530000', N'1', 102, N'Motivo Internos', 100, 9, 2, NULL, 1, N'Generales.Frm_mottrasladoint', null, '60', '0530', '001' UNION ALL
    --SELECT N'600530000', N'1', 103, N'Centro costo', 100, 9, 2, NULL, 1, N'Generales.Frm_centrocostos', null, '60', '0530', '001' UNION ALL
    SELECT N'600530000', N'1', 104, N'Tipo de cambio',100, 9, 2, NULL, 1, N'Generales.Frm_tipocambio', null, '60', '0530', '001' UNION ALL
    --SELECT N'600530000', N'1', 105, N'Sys Dominio', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_dominio', null, '60', '0530', '001' UNION ALL
    --SELECT N'600530000', N'1', 106, N'Sys Módulo', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_modulo', null, '60', '0530', '001' UNION ALL
    --SELECT N'600530000', N'1', 107, N'Sys Local', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_local', null, '60', '0530', '001' UNION ALL
    SELECT N'600530000', N'1', 108, N'Tipos de Documentos', 100, 9, 2, NULL, 1, N'Generales.Frm_modulo_local_tipodoc', null, '60', '0530', '001' UNION ALL
    SELECT N'600530000', N'1', 109, N'Cond. de Pago', 100, 9, 2, NULL, 1, N'Generales.Frm_condpago', null, '60', '0530', '001' UNION ALL
    --SELECT N'600530000', N'1', 110, N'Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_usuarios', null, '60', '0530', '001' UNION ALL
    --SELECT N'600530000', N'1', 111, N'Adm. Usuarios x perfil x local',100, 9, 2, NULL, 1, N'Generales.Frm_usuarios_perfil_local', null, '60', '0530', '001' UNION ALL
	--SELECT N'600530000', N'1', 112, N'Panel de Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_usuarios_panel', null, '60', '0530', '001' UNION ALL
    --SELECT N'600530000', N'1', 113, N'Menú de Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_perfilitems', null, '60', '0530', '001' UNION ALL
    SELECT N'600530000', N'1', 114, N'Unidad de Medida', 100, 9, 2, NULL, 1, N'Generales.Frm_UndMedida', null, '60', '0530', '001' UNION ALL
	SELECT N'600530000', N'1', 115, N'Equivalencia', 100, 9, 2, NULL, 1, N'Generales.Frm_Equivalencia', null, '60', '0530', '001' UNION ALL
	
	
    SELECT N'600530000', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600530000', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', null, '60', '0530', '001' UNION ALL
	SELECT N'600530000', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600530000', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', null, '60', '0530', '001' UNION ALL
	SELECT N'600530000', N'1', 205, N'Digitacion Inventariado', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_digitacion_inv', null, '60', '0530', '001' UNION ALL
	--SELECT N'600530000', N'1', 206, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', null, '60', '0530', '001' UNION ALL
    --SELECT N'600530000', N'1', 207, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra', '00000', null, null, null UNION ALL
	
    SELECT N'600530000', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600530000', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', null, '60', '0530', '001' UNION ALL
	SELECT N'600530000', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', null, '60', '0530', '001' UNION ALL
	SELECT N'600530000', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productostock', null, '60', '0530', '001' UNION ALL
	--SELECT N'600530000', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', null, '60', '0530', '001' UNION ALL
	SELECT N'600530000', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', null, '60', '0530', '001' UNION ALL
	--SELECT N'600530000', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', null, '60', '0530', '001' UNION ALL
	SELECT N'600530000', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', null, '60', '0530', '001' UNION ALL
	SELECT N'600530000', N'1', 408, N'Toma de Inventario', 400, 8, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_TomaInventario', null, '60', '0530', '001' UNION ALL
	SELECT N'600530000', N'1', 409, N'Diferencia de Inventarios', 400, 9, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInv', null, '60', '0530', '001' UNION ALL
    --SELECT N'600530000', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', null, '60', '0530', '001' UNION ALL
    SELECT N'600530000', N'1', 411, N'Ordenes Pendientes', 400, 11, 1, NULL, 1, N'DL0Logistica.Frm_reporte_ordcompra', null, '60', '0530', '001' UNION ALL	
	SELECT N'600530000', N'1', 412, N'Requerimiento de  O/C', 400, 12, 1, NULL, 1, N'D60ALMACEN.REPORTES.Frm_RequerimientoOC', null, '60', '0530', '001' UNION ALL
	
    SELECT N'600530000', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600530000', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_perimes', null, '60', '0530', '001' UNION ALL
	SELECT N'600530000', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes', null, '60', '0530', '001' UNION ALL
	SELECT N'600530000', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_historico', null, '60', '0530', '001' UNION ALL
	SELECT N'600530000', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes_inioper', null, '60', '0530', '001' UNION ALL
	SELECT N'600530000', N'1', 513, N'Constantes Generales', 500,13, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Form_ConstantesGenerales', null, '60', '0530', '001' UNION ALL
	SELECT N'600530000', N'1', 514, N'Ajuste de Inventario', 500,14, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_ajuste_inventario', null, '60', '0530', '001' 	
    COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 27.....Done!', 10, 1) WITH NOWAIT; 


	/*** MODULO ALMACEN  DE VARIOS OPERADOR **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600530001', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600530001', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', '10000', '60', '0530', '001' UNION ALL
    SELECT N'600530001', N'1', 102, N'Motivo Internos', 100, 9, 2, NULL, 1, N'Generales.Frm_mottrasladoint', '10000', '60', '0530', '001' UNION ALL
    --SELECT N'600530001', N'1', 103, N'Centro costo', 100, 9, 2, NULL, 1, N'Generales.Frm_centrocostos', '10000', '60', '0530', '001' UNION ALL
    SELECT N'600530001', N'1', 104, N'Tipo de cambio',100, 9, 2, NULL, 1, N'Generales.Frm_tipocambio', '10000', '60', '0530', '001' UNION ALL

    SELECT N'600530001', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600530001', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', null, '60', '0530', '001' UNION ALL
	SELECT N'600530001', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600530001', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', '10000', '60', '0530', '001' UNION ALL
	SELECT N'600530001', N'1', 205, N'Digitacion Inventariado', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_digitacion_inv', '10000', '60', '0530', '001' UNION ALL
	--SELECT N'600530001', N'1', 206, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', null, '60', '0530', '001' UNION ALL
    --SELECT N'600530001', N'1', 207, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra', '00000', null, null, null UNION ALL
	
    SELECT N'600530001', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600530001', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', '10000', '60', '0530', '001' UNION ALL
	SELECT N'600530001', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', '10000', '60', '0530', '001' UNION ALL
	SELECT N'600530001', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productostock', '10000', '60', '0530', '001' UNION ALL
	--SELECT N'600530001', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', '10000', '60', '0530', '001' UNION ALL
	SELECT N'600530001', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', '10000', '60', '0530', '001' UNION ALL
	--SELECT N'600530001', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', '10000', '60', '0530', '001' UNION ALL
	SELECT N'600530001', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', '10000', '60', '0530', '001' UNION ALL
	SELECT N'600530001', N'1', 408, N'Toma de Inventario', 400, 8, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_TomaInventario', '10000', '60', '0530', '001' UNION ALL
	SELECT N'600530001', N'1', 409, N'Diferencia de Inventarios', 400, 9, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInv', '10000', '60', '0530', '001' UNION ALL
    --SELECT N'600530001', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', '10000', '60', '0530', '001' UNION ALL
    SELECT N'600530001', N'1', 411, N'Ordenes Pendientes', 400, 11, 1, NULL, 1, N'DL0Logistica.Frm_reporte_ordcompra', null, '60', '0530', '001' UNION ALL	
	SELECT N'600530001', N'1', 412, N'Requerimiento de  O/C', 400, 12, 1, NULL, 1, N'D60ALMACEN.REPORTES.Frm_RequerimientoOC', null, '60', '0530', '001' UNION ALL
	
    SELECT N'600530001', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600530001', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_perimes', '10000', '60', '0530', '001' UNION ALL
	SELECT N'600530001', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes', '10000', '60', '0530', '001' UNION ALL
	SELECT N'600530001', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_historico', '10000', '60', '0530', '001' UNION ALL
	SELECT N'600530001', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes_inioper', '10000', '60', '0530', '001' UNION ALL
	SELECT N'600530001', N'1', 513, N'Constantes Generales', 500,13, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Form_ConstantesGenerales', '10000', '60', '0530', '001' UNION ALL
	SELECT N'600530001', N'1', 514, N'Ajuste de Inventario', 500,14, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_ajuste_inventario', '10000', '60', '0530', '001' 
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 28.....Done!', 10, 1) WITH NOWAIT;



/*** MODULO ALMACEN  DE OFICINAS SUPERVISOR **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma] , [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600540000', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600540000', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', null, '60', '0540', '001' UNION ALL
    SELECT N'600540000', N'1', 102, N'Motivo Internos', 100, 9, 2, NULL, 1, N'Generales.Frm_mottrasladoint', null, '60', '0540', '001' UNION ALL
    --SELECT N'600540000', N'1', 103, N'Centro costo', 100, 9, 2, NULL, 1, N'Generales.Frm_centrocostos', null, '60', '0540', '001' UNION ALL
    SELECT N'600540000', N'1', 104, N'Tipo de cambio',100, 9, 2, NULL, 1, N'Generales.Frm_tipocambio', null, '60', '0540', '001' UNION ALL
    --SELECT N'600540000', N'1', 105, N'Sys Dominio', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_dominio', null, '60', '0540', '001' UNION ALL
    --SELECT N'600540000', N'1', 106, N'Sys Módulo', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_modulo', null, '60', '0540', '001' UNION ALL
    --SELECT N'600540000', N'1', 107, N'Sys Local', 100, 9, 2, NULL, 1, N'Generales.Frm_sys_local', null, '60', '0540', '001' UNION ALL
    SELECT N'600540000', N'1', 108, N'Tipos de Documentos', 100, 9, 2, NULL, 1, N'Generales.Frm_modulo_local_tipodoc', null, '60', '0540', '001' UNION ALL
    SELECT N'600540000', N'1', 109, N'Cond. de Pago', 100, 9, 2, NULL, 1, N'Generales.Frm_condpago', null, '60', '0540', '001' UNION ALL
  --SELECT N'600540000', N'1', 110, N'Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_usuarios', null, '60', '0540', '001' UNION ALL
    --SELECT N'600540000', N'1', 111, N'Adm. Usuarios x perfil x local',100, 9, 2, NULL, 1, N'Generales.Frm_usuarios_perfil_local', null, '60', '0540', '001' UNION ALL
	--SELECT N'600540000', N'1', 112, N'Panel de Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_usuarios_panel', null, '60', '0540', '001' UNION ALL
    --SELECT N'600540000', N'1', 113, N'Menú de Usuario', 100, 9, 2, NULL, 1, N'Generales.Frm_perfilitems', null, '60', '0540', '001' UNION ALL
    SELECT N'600540000', N'1', 114, N'Unidad de Medida', 100, 9, 2, NULL, 1, N'Generales.Frm_UndMedida', null, '60', '0540', '001' UNION ALL
	SELECT N'600540000', N'1', 115, N'Equivalencia', 100, 9, 2, NULL, 1, N'Generales.Frm_Equivalencia', null, '60', '0540', '001' UNION ALL
	
	
    SELECT N'600540000', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600540000', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', null, '60', '0540', '001' UNION ALL
	SELECT N'600540000', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600540000', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', null, '60', '0540', '001' UNION ALL
	SELECT N'600540000', N'1', 205, N'Digitacion Inventariado', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_digitacion_inv', null, '60', '0540', '001' UNION ALL
	--SELECT N'600540000', N'1', 206, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', null, '60', '0540', '001' UNION ALL
    --SELECT N'600540000', N'1', 207, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra', '00000', null, null, null UNION ALL
		
    SELECT N'600540000', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600540000', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', null, '60', '0540', '001' UNION ALL
	SELECT N'600540000', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', null, '60', '0540', '001' UNION ALL
	SELECT N'600540000', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productostock', null, '60', '0540', '001' UNION ALL
	--SELECT N'600540000', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', null, '60', '0540', '001' UNION ALL
	SELECT N'600540000', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', null, '60', '0540', '001' UNION ALL
	--SELECT N'600540000', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', null, '60', '0540', '001' UNION ALL
	SELECT N'600540000', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', null, '60', '0540', '001' UNION ALL
	SELECT N'600540000', N'1', 408, N'Toma de Inventario', 400, 8, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_TomaInventario', null, '60', '0540', '001' UNION ALL
	SELECT N'600540000', N'1', 409, N'Diferencia de Inventarios', 400, 9, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInv', null, '60', '0540', '001' UNION ALL
    --SELECT N'600540000', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', null, '60', '0540', '001' UNION ALL
    SELECT N'600540000', N'1', 411, N'Ordenes Pendientes', 400, 11, 1, NULL, 1, N'DL0Logistica.Frm_reporte_ordcompra', null, '60', '0540', '001' UNION ALL	
	SELECT N'600540000', N'1', 412, N'Requerimiento de  O/C', 400, 12, 1, NULL, 1, N'D60ALMACEN.REPORTES.Frm_RequerimientoOC', null, '60', '0540', '001' UNION ALL
	
    SELECT N'600540000', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600540000', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_perimes', null, '60', '0540', '001' UNION ALL
	SELECT N'600540000', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes', null, '60', '0540', '001' UNION ALL
	SELECT N'600540000', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_historico', null, '60', '0540', '001' UNION ALL
	SELECT N'600540000', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes_inioper', null, '60', '0540', '001' UNION ALL
	SELECT N'600540000', N'1', 513, N'Constantes Generales', 500,13, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Form_ConstantesGenerales', null, '60', '0540', '001' UNION ALL
	SELECT N'600540000', N'1', 514, N'Ajuste de Inventario', 500,14, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_ajuste_inventario', null, '60', '0540', '001' 	
    COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 27.....Done!', 10, 1) WITH NOWAIT; 




	/*** MODULO ALMACEN  DE OFICINAS OPERADOR **/
	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc], [dominioid], [moduloid], [local])
    SELECT N'600540001', N'1', 100, N'Tablas', 100, 0, 2, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600540001', N'1', 101, N'Proveedor-Cliente', 100, 8, 2, NULL, 1, N'Generales.Frm_clientesproveedores', '10000', '60', '0540', '001' UNION ALL
    SELECT N'600540001', N'1', 102, N'Motivo Internos', 100, 9, 2, NULL, 1, N'Generales.Frm_mottrasladoint', '10000', '60', '0540', '001' UNION ALL
    --SELECT N'600540001', N'1', 103, N'Centro costo', 100, 9, 2, NULL, 1, N'Generales.Frm_centrocostos', '10000', '60', '0540', '001' UNION ALL
    SELECT N'600540001', N'1', 104, N'Tipo de cambio',100, 9, 2, NULL, 1, N'Generales.Frm_tipocambio', '10000', '60', '0540', '001' UNION ALL

    SELECT N'600540001', N'1', 200, N'Archivos', 200, 0, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	--SELECT N'600540001', N'1', 202, N'Rollos', 200, 3, 1, NULL, 1, N'D60ALMACEN.CATALOGO.Frm_producto_rollos', null, '60', '0540', '001' UNION ALL
	SELECT N'600540001', N'1', 203, N'Documentos de Almacén', 200, 4, 1, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600540001', N'1', 204, N'Emitir Documento', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento', '10000', '60', '0540', '001' UNION ALL
	SELECT N'600540001', N'1', 205, N'Digitacion Inventariado', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_digitacion_inv', '10000', '60', '0540', '001' UNION ALL
	--SELECT N'600540001', N'1', 206, N'Emitir Documento x Rollos', 203, 1, 1, NULL, 1, N'D60ALMACEN.Frm_movimiento_rollos', null, '60', '0540', '001' UNION ALL
    --SELECT N'600540001', N'1', 207, N'Orden de compra', 203, 1, 1, NULL, 1, N'DL0Logistica.Frm_ordencompra', '00000', null, null, null UNION ALL
		
    SELECT N'600540001', N'1', 400, N'Reportes', 400, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
    SELECT N'600540001', N'1', 401, N'Balance de Stock', 400, 1, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_balancestock', '10000', '60', '0540', '001' UNION ALL
	SELECT N'600540001', N'1', 402, N'Documentos Emitidos', 400, 2, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_docsemitido', '10000', '60', '0540', '001' UNION ALL
	SELECT N'600540001', N'1', 403, N'Stock por Artículo', 400, 3, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productostock', '10000', '60', '0540', '001' UNION ALL
	--SELECT N'600540001', N'1', 404, N'Stock por Rollo', 400, 4, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollostock', '10000', '60', '0540', '001' UNION ALL
	SELECT N'600540001', N'1', 405, N'Kardex por Artículo', 400, 5, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_productokardex_tela', '10000', '60', '0540', '001' UNION ALL
	--SELECT N'600540001', N'1', 406, N'Kardex por Rollo', 400, 6, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollokardex', '10000', '60', '0540', '001' UNION ALL
	SELECT N'600540001', N'1', 407, N'Consumos por OP', 400, 7, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_mov_ordprod', '10000', '60', '0540', '001' UNION ALL
	SELECT N'600540001', N'1', 408, N'Toma de Inventario', 400, 8, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_TomaInventario', '10000', '60', '0540', '001' UNION ALL
	SELECT N'600540001', N'1', 409, N'Diferencia de Inventarios', 400, 9, 3, NULL, 1, N'D60ALMACEN.Frm_reporte_diferenciaInv', '10000', '60', '0540', '001' UNION ALL
    --SELECT N'600540001', N'1', 408, N'Impresion de CodBar', 400, 8,3, NULL, 1, N'D60ALMACEN.Frm_reporte_rollocodbar', '10000', '60', '0540', '001' UNION ALL
    SELECT N'600540001', N'1', 411, N'Ordenes Pendientes', 400, 11, 1, NULL, 1, N'DL0Logistica.Frm_reporte_ordcompra', null, '60', '0540', '001' UNION ALL	
	SELECT N'600540001', N'1', 412, N'Requerimiento de  O/C', 400, 12, 1, NULL, 1, N'D60ALMACEN.REPORTES.Frm_RequerimientoOC', null, '60', '0540', '001' UNION ALL
	
    SELECT N'600540001', N'1', 500, N'Procesos', 500, 0, 3, NULL, 1, N'main.aspx', NULL, NULL, NULL, NULL UNION ALL
	SELECT N'600540001', N'1', 501, N'Reorganiza Perimes', 500, 1, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_perimes', '10000', '60', '0540', '001' UNION ALL
	SELECT N'600540001', N'1', 510, N'Cierre de Perimes', 500,10, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes', '10000', '60', '0540', '001' UNION ALL
	SELECT N'600540001', N'1', 511, N'Reorganización de Historico', 500,11, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_reorganiza_historico', '10000', '60', '0540', '001' UNION ALL
	SELECT N'600540001', N'1', 512, N'Cierre de Perimes Inicio Operaciones', 500,12, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_cierre_perimes_inioper', '10000', '60', '0540', '001' UNION ALL
	SELECT N'600540001', N'1', 513, N'Constantes Generales', 500,13, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Form_ConstantesGenerales', '10000', '60', '0540', '001' UNION ALL
	SELECT N'600540001', N'1', 514, N'Ajuste de Inventario', 500,14, 3, NULL, 1, N'D60ALMACEN.PROCESOS.Frm_ajuste_inventario', '10000', '60', '0540', '001' 
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 28.....Done!', 10, 1) WITH NOWAIT;




	/*** PLANILLA CONTRATOS RRHH - RECURSOS HUMANOS **/

	BEGIN TRANSACTION;
	INSERT INTO [dbo].[tb_perfilitems]([idper], [plataforma],  [menid], [descr], [padid], [posic], [grupo], [icono], [habil], [pgurl], [nivelacc])
	SELECT N'RH0100000', N'1', 100, N'Tablas', 100, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'RH0100000', N'1', 101, N'Selección de Empresa', 100, 1, NULL, NULL, 1, N'.Frm_Paises', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 102, N'Datos de la Empresa', 100, 2, NULL, NULL, 1, N'.Frm_Division', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 110, N'Maestros Generales', 100, 0, NULL, NULL, 1, NULL, NULL UNION ALL
	SELECT N'RH0100000', N'1', 111, N'Tipo de Contrato', 110, 1, NULL, NULL, 1, N'RecursosHumanos.Tablas.Frm_Planilla_GenTipoContrato', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 112, N'Tipos de Préstamos', 110, 2, NULL, NULL, 1, N'RecursosHumanos.Tablas.Frm_Planilla_GenTipoPrestamo', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 113, N'Eventos Permisos', 110, 3, NULL, NULL, 1, N'RecursosHumanos.Tablas.Frm_Planilla_GenEventosPermiso', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 114, N'Motivos Cese Trabajador', 110, 4, NULL, NULL, 1, N'RecursosHumanos.Tablas.Frm_Planilla_GenMotivosCese', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 115, N'Feriados', 110, 5, NULL, NULL, 1, N'RecursosHumanos.Tablas.Frm_Planilla_GenFeriados', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 116, N'Motivos de Permisos', 110, 6, NULL, NULL, 1, N'RecursosHumanos.Tablas.Frm_Planilla_GenMotivosPermiso', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 117, N'Bancos', 110, 7, NULL, NULL, 1, N'RecursosHumanos.Tablas.Frm_Planilla_GenBancos', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 120, N'Trabajadores', 100, 0, NULL, NULL, 1, NULL, NULL UNION ALL
	SELECT N'RH0100000', N'1', 121, N'Ficha del Trabajador', 120, 1, NULL, NULL, 1, N'RecursosHumanos.Frm_RegistroTrabajadores', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 122, N'Derecho Habientes', 120, 2, NULL, NULL, 1, N'RecursosHumanos.Frm_RegistroTrabajadoresDechoHabiente', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 123, N'Cesado/Inactivo de Trabajadores', 120, 3, NULL, NULL, 1, N'RecursosHumanos.Frm_RegistroTrabajadoresBaja', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 124, N'Re-Activar Trabajador', 120, 4, NULL, NULL, 1, N'RecursosHumanos.Frm_RegistroTrabjadoresReactivar', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 125, N'Marcar en Bloque-Autocontrol', 120, 5, NULL, NULL, 1, N'RecursosHumanos.Frm_RegistroTrabajadoresAutocontrol', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 130, N'Tipo de Planilla', 100, 5, NULL, NULL, 1, N'RecursosHumanos.Frm_TipoPlanilla', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 131, N'Plantillas de Contrato', 100, 6, NULL, NULL, 1, N'RecursosHumanos.Tablas.Frm_Planilla_PlantillaContratos', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 132, N'Configuración del Tareo', 100, 7, NULL, NULL, 1, N'RecursosHumanos.Tablas.Frm_ConfiguracionTareo', NULL UNION ALL
	SELECT N'RH0100000', N'1', 140, N'Conceptos/Rubros', 100, 0, NULL, NULL, 1, NULL, NULL UNION ALL
	SELECT N'RH0100000', N'1', 141, N'Ingresos', 140, 1, NULL, NULL, 1, N'RecursosHumanos.Tablas.Frm_Planilla_RubrosIngreso', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 142, N'Descuentos', 140, 2, NULL, NULL, 1, N'RecursosHumanos.Tablas.Frm_Planilla_RubrosDescuento', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 143, N'Aportaciones', 140, 3, NULL, NULL, 1, N'RecursosHumanos.Tablas.Frm_Planilla_RubrosAportaciones', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 144, N'Permanentes', 140, 4, NULL, NULL, 1, N'RecursosHumanos.Tablas.Frm_Planilla_RubrosPermanente', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 150, N'Tabla 13: Régimen Pensionario', 100, 9, NULL, NULL, 1, N'RecursosHumanos.Tablas.Frm_RegimenPensionario', NULL UNION ALL
	SELECT N'RH0100000', N'1', 151, N'Retención Rta. 5ta. Categoría', 100, 10, NULL, NULL, 1, N'RecursosHumanos.Tablas.Frm_Retenciones5ta', NULL UNION ALL
	SELECT N'RH0100000', N'1', 152, N'Centro de Costos', 100, 11, NULL, NULL, 1, N'DA0CONTABILIDAD.Frm_CentroCostos', NULL UNION ALL
	SELECT N'RH0100000', N'1', 153, N'Establecimientos Empresa', 100, 12, NULL, NULL, 1, N'RecursosHumanos.Tablas.Frm_Planilla_EstabEmpresa', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 154, N'Cargos', 100, 13, NULL, NULL, 1, N'RecursosHumanos.Tablas.Frm_Planilla_Cargos', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 155, N'Periodos Vacacionales', 100, 14, NULL, NULL, 1, N'RecursosHumanos.Tablas.Frm_PeriodosVacacionales', NULL UNION ALL
	SELECT N'RH0100000', N'1', 156, N'U.I.T.', 100, 15, NULL, NULL, 1, N'RecursosHumanos.Tablas.Frm_UnidadImpositivaTributaria', NULL UNION ALL
	SELECT N'RH0100000', N'1', 157, N'Parámetros TELECREDITO', 100, 16, NULL, NULL, 1, N'RecursosHumanos.Tablas.Frm_Telecredito', NULL UNION ALL
	SELECT N'RH0100000', N'1', 160, N'Horarios', 100, 0, NULL, NULL, 1, NULL, NULL UNION ALL
	SELECT N'RH0100000', N'1', 161, N'Horarios Diarios', 160, 1, NULL, NULL, 1, N'RecursosHumanos.Tablas.Frm_Horarios_HorariosDiarios', NULL UNION ALL
	SELECT N'RH0100000', N'1', 162, N'Horarios Semanales', 160, 2, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 163, N'Asignación Horarios', 160, 3, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 164, N'Asignación Masiva Horarios', 160, 4, NULL, NULL, 1, N'RecursosHumanos.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 170, N'Rubros Quincenal', 100, 18, NULL, NULL, 1, N'RecursosHumanos.Tablas.Frm_RubrosQuincenales', NULL UNION ALL

	SELECT N'RH0100000', N'1', 200, N'Configuración', 200, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'RH0100000', N'1', 201, N'Porcentajes AFP', 200, 1, NULL, NULL, 1, N'RecursosHumanos.Configuraciones.Frm_PorcentAFP', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 202, N'Porcentajes Leyes (Trabajador/Empleador)', 200, 2, NULL, NULL, 1, N'RecursosHumanos.Configuraciones.Frm_PorcentajeLeyTrabajador', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 203, N'Afectación Leyes (Trabajador/Empleador)', 200, 3, NULL, NULL, 1, N'RecursosHumanos.Configuraciones.Frm_AfectacionesEmplTrab', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 204, N'Afectaciones AFP', 200, 4, NULL, NULL, 1, N'RecursosHumanos.Configuraciones.Frm_AfectacionesAFPs', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 205, N'Afectaciones Renta 5ta Categoría', 200, 5, NULL, NULL, 1, N'RecursosHumanos.Configuraciones.Frm_AfectacionesRenta5ta', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 206, N'Afectaciones Gratificación', 200, 6, NULL, NULL, 1, N'RecursosHumanos.Configuraciones.Frm_AfectacionesGratificaciones', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 207, N'Afectaciones CTS', 200, 7, NULL, NULL, 1, N'RecursosHumanos.Configuraciones.Frm_AfectacionesCTS', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 208, N'Afectaciones Vacaciones', 200, 8, NULL, NULL, 1, N'RecursosHumanos.Configuraciones.Frm_AfectacionesVacaciones', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 209, N'Rubros Generales Planilla', 200, 9, NULL, NULL, 1, N'RecursosHumanos.Configuraciones.Frm_RubrosGeneralesPlanilla', N'10000' UNION ALL
	SELECT N'RH0100000', N'1', 210, N'C.Costo Generales Planilla', 200, 10, NULL, NULL, 1, N'RecursosHumanos.Configuraciones.Frm_CcostoGeneralesPlanilla', N'10000' UNION ALL

	SELECT N'RH0100000', N'1', 300, N'Movimiento', 300, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'RH0100000', N'1', 301, N'Numeración de Planilla', 300, 1, NULL, NULL, 1, N'RecursosHumanos.Frm_NumeracionPlanilla', NULL UNION ALL
	SELECT N'RH0100000', N'1', 302, N'Selección de Planilla', 300, 2, NULL, NULL, 1, N'RecursosHumanos.Frm_SeleccionaPlanilla', NULL UNION ALL
	SELECT N'RH0100000', N'1', 303, N'Autorización Horas Extras', 300, 3, NULL, NULL, 1, N'RecursosHumanos.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 304, N'Tareo Horas Extras', 300, 4, NULL, NULL, 1, N'RecursosHumanos.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 305, N'Tareo Quincenal', 300, 5, NULL, NULL, 1, N'RecursosHumanos.Tareo.Frm_TareoQuincenal', NULL UNION ALL
	SELECT N'RH0100000', N'1', 306, N'Tareo de Planillas', 300, 6, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 307, N'Autorizaciones y Permisos', 300, 7, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 308, N'Pagos AFP', 300, 8, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 309, N'Préstamos al Personal', 300, 9, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 310, N'Reintegros', 300, 10, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 311, N'Asignación Horarios', 300, 11, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 312, N'Emisión de Contratos', 300, 12, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 313, N'Recibos', 300, 13, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 314, N'Generar Recibos', 300, 14, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 315, N'Tabulación Horas Extras', 300, 15, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL

	SELECT N'RH0100000', N'1', 400, N'Reportes', 400, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'RH0100000', N'1', 401, N'Datos Generales', 400, 0, NULL, NULL, 1, NULL, NULL UNION ALL
	SELECT N'RH0100000', N'1', 402, N'Conceptos/Rubros', 401, 1, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 403, N'Cargos', 401, 2, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 404, N'Trabajadores-Datos Generales', 401, 3, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 405, N'Trabajadores-Ficha Trabajador', 401, 4, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 410, N'Planillas', 400, 0, NULL, NULL, 1, NULL, NULL UNION ALL
	SELECT N'RH0100000', N'1', 411, N'Planilla Oficial/Listado de PLanilla', 410, 1, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 412, N'Planilla por Forma de Pago', 410, 2, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 413, N'Planilla AFP', 410, 3, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 414, N'Planilla ONP', 410, 4, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 415, N'Planilla Essalud', 410, 5, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 416, N'Planilla Senati', 410, 6, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 417, N'Planilla 5ta Categoria', 410, 7, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 420, N'Estructura Remunerativa', 400, 3, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 421, N'Boleta de Pago', 400, 4, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 422, N'Resumen de Planilla', 400, 5, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 423, N'Detalle Provisión Planillas', 400, 6, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 424, N'Resumen Provisión de Planillas', 400, 7, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 425, N'Reintegros', 400, 8, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 426, N'Horas Extras', 400, 9, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 427, N'Cese de Trabajadores', 400, 10, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 428, N'Préstamos', 400, 11, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 429, N'Autorizaciones y Permisos', 400, 12, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 430, N'Listado de Contratos', 400, 13, NULL, NULL, 1, N'RecursosHumanos.Reportes.Frm_ReporteContratos', NULL UNION ALL
	SELECT N'RH0100000', N'1', 431, N'Planillas Consolidadas', 400, 14, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 432, N'CTS Semestral', 400, 15, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 433, N'Gratificación Semestral', 400, 16, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL
	SELECT N'RH0100000', N'1', 434, N'Recibos', 400, 17, NULL, NULL, 1, N'.Frm_Division', NULL UNION ALL

	SELECT N'RH0100000', N'1', 500, N'Procesos', 500, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'RH0100000', N'1', 501, N'Cálculo de Planilla', 500, 1, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 502, N'CTS Semestral', 500, 2, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 503, N'Gratificación', 500, 3, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 504, N'Transferencia de Nóminas', 500, 4, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 505, N'Generación Datos AFP-NET', 500, 5, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 506, N'Actualizar CUSPP Masivo', 500, 6, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL

	SELECT N'RH0100000', N'1', 600, N'Utilitarios', 600, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'RH0100000', N'1', 601, N'Pre - Contratos', 600, 1, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 602, N'Generación de Precontratos', 600, 2, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 603, N'Copia Variables de Configuración', 600, 3, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 604, N'Generación de Fotochecks', 600, 4, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 605, N'Billetaje', 600, 5, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 606, N'Interface Planilla Electrónica (Formulario 0601)', 600, 6, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL

	SELECT N'RH0100000', N'1', 700, N'Cierres', 700, 0, NULL, NULL, 1, N'main.aspx', NULL UNION ALL
	SELECT N'RH0100000', N'1', 701, N'Horas Extras/Reintegros', 700, 1, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 702, N'Adelanto de Quincena', 700, 2, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 703, N'Planillas', 700, 3, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 704, N'Cierre Contable Estructura Remunerativa', 700, 4, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 705, N'Cierre Variables Configuración', 700, 5, NULL, NULL, 1, N'.Frm_Paises', NULL UNION ALL
	SELECT N'RH0100000', N'1', 706, N'Cierre Gerencia Estructura Remunerativa', 700, 6, NULL, NULL, 1, N'.Frm_Paises', NULL 
	COMMIT;
	RAISERROR (N'[dbo].[tb_perfilitems]: Insert Batch: 10.....Done!', 10, 1) WITH NOWAIT;
END
