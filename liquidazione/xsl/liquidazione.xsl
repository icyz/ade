<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.1"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      xmlns:iv="urn:www.agenziaentrate.gov.it:specificheTecniche:sco:ivp">
    <xsl:comment>Andrea Mariani, Fasys.it</xsl:comment>

    <head>
        <!--<link rel="stylesheet" type="text/css" href="xml/liquidazione/xsl/style.css"/>-->
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <style type="text/css">
            *{ font-family:Arial; }
            th { text-align:left; }
            td.separator { border-bottom:6px solid #666; }
        </style>
    </head>
    <body>

        <table>
            <tr>
                <th colspan="2">FORNITURA</th>
            </tr>
            <tr>
                <td colspan="2" class="separator"></td>
            </tr>
            <tr>
                <th colspan="2">INTESTAZIONE</th>
            </tr>
            <tr>
                <th>Codice Fornitura</th>
                <td><xsl:value-of select="iv:Fornitura/iv:Intestazione/iv:CodiceFornitura"/></td>
            </tr>
            <tr>
                <th>Codice Fiscale Dichiarante</th>
                <td><xsl:value-of select="iv:Fornitura/iv:Intestazione/iv:CodiceFiscaleDichiarante"/></td>
            </tr>
            <tr>
                <th>Codice Carica</th>
                <td><xsl:value-of select="iv:Fornitura/iv:Intestazione/iv:CodiceCarica"/></td>
            </tr>


            <tr>
                <th colspan="3">FRONTESPIZIO</th>
            </tr>
            <tr>
                <th>Codice Fiscale</th>
                <td><xsl:value-of select="iv:Fornitura/iv:Comunicazione/iv:Frontespizio/iv:CodiceFiscale"/></td>
            </tr>
            <tr>
                <th>Anno Imposta</th>
                <td><xsl:value-of select="iv:Fornitura/iv:Comunicazione/iv:Frontespizio/iv:AnnoImposta"/></td>
            </tr>
            <tr>
                <th>Partita IVA</th>
                <td><xsl:value-of select="iv:Fornitura/iv:Comunicazione/iv:Frontespizio/iv:PartitaIVA"/></td>
            </tr>

            <xsl:if test="iv:Fornitura/iv:Comunicazione/iv:Frontespizio/iv:PIVAControllante">
                <tr>
                    <th>PIVA Controllante</th>
                    <td><xsl:value-of select="iv:Fornitura/iv:Comunicazione/iv:Frontespizio/iv:PIVAControllante"/></td>
                </tr>
            </xsl:if>

            <xsl:if test="iv:Fornitura/iv:Comunicazione/iv:Frontespizio/iv:UltimoMese">
                <tr>
                    <th>Ultimo Mese</th>
                    <td><xsl:value-of select="iv:Fornitura/iv:Comunicazione/iv:Frontespizio/iv:UltimoMese"/></td>
                </tr>
            </xsl:if>

            <xsl:if test="iv:Fornitura/iv:Comunicazione/iv:Frontespizio/iv:LiquidazioneGruppo">
                <tr>
                    <th>Liquidazione Gruppo</th>
                    <td><xsl:value-of select="iv:Fornitura/iv:Comunicazione/iv:Frontespizio/iv:LiquidazioneGruppo"/></td>
                </tr>
            </xsl:if>

            <tr>
                <th>Codice Fiscale Dichiarante</th>
                <td><xsl:value-of select="iv:Fornitura/iv:Comunicazione/iv:Frontespizio/iv:CFDichiarante"/></td>
            </tr>
            <tr>
                <th>Codice Carica Dichiarante</th>
                <td><xsl:value-of select="iv:Fornitura/iv:Comunicazione/iv:Frontespizio/iv:CodiceCaricaDichiarante"/></td>
            </tr>
            <tr>
                <th>Codice Fiscale Società</th>
                <td><xsl:value-of select="iv:Fornitura/iv:Comunicazione/iv:Frontespizio/iv:CodiceFiscaleSocieta"/></td>
            </tr>
            <tr>
                <th>Firma Dichiarazione</th>
                <td><xsl:value-of select="iv:Fornitura/iv:Comunicazione/iv:Frontespizio/iv:FirmaDichiarazione"/></td>
            </tr>
            <tr>
                <th>CF Intermediario</th>
                <td><xsl:value-of select="iv:Fornitura/iv:Comunicazione/iv:Frontespizio/iv:CFIntermediario"/></td>
            </tr>
            <tr>
                <th>Impegno Presentazione</th>
                <td><xsl:value-of select="iv:Fornitura/iv:Comunicazione/iv:Frontespizio/iv:ImpegnoPresentazione"/></td>
            </tr>
            <tr>
                <th>Data Impegno</th>
                <td><xsl:value-of select="iv:Fornitura/iv:Comunicazione/iv:Frontespizio/iv:DataImpegno"/></td>
            </tr>
            <tr>
                <th>Firma Intermediario</th>
                <td><xsl:value-of select="iv:Fornitura/iv:Comunicazione/iv:Frontespizio/iv:FirmaIntermediario"/></td>
            </tr>

            <xsl:if test="iv:Fornitura/iv:Comunicazione/iv:Frontespizio/iv:FlagConferma">
                <tr>
                    <th>Flag Conferma</th>
                    <td><xsl:value-of select="iv:Fornitura/iv:Comunicazione/iv:Frontespizio/iv:FlagConferma"/></td>
                </tr>
            </xsl:if>

            <tr>
                <th>Identificativo Prod. Software</th>
                <td><xsl:value-of select="iv:Fornitura/iv:Comunicazione/iv:Frontespizio/iv:IdentificativoProdSoftware"/></td>
            </tr>


            <tr>
                <th colspan="2">DATI CONTABILI</th>
            </tr>
            <tr>
                <td colspan="2" class="separator"></td>
            </tr>
            <xsl:for-each select="iv:Fornitura/iv:Comunicazione/iv:DatiContabili/iv:Modulo">
                <tr>
                    <th colspan="2">MODULO <xsl:value-of select="iv:NumeroModulo"/></th>
                </tr>
                <tr>
                    <th>Mese</th>
                    <td><xsl:value-of select="iv:Mese"/></td>
                </tr>

                <xsl:if test="iv:Trimestre">
                    <tr>
                        <th>Trimestre</th>
                        <td><xsl:value-of select="iv:Trimestre"/></td>
                    </tr>
                </xsl:if>
                <xsl:if test="iv:EventiEccezionali">
                    <tr>
                        <th>Eventi Eccezionali</th>
                        <td><xsl:value-of select="iv:EventiEccezionali"/></td>
                    </tr>
                </xsl:if>
                <xsl:if test="iv:OperazioniStraordinarie">
                    <tr>
                        <th>Operazioni Straordinarie</th>
                        <td><xsl:value-of select="iv:OperazioniStraordinarie"/></td>
                    </tr>
                </xsl:if>
                <xsl:if test="iv:TotaleOperazioniAttive">
                    <tr>
                        <th>Totale Operazioni Attive</th>
                        <td><xsl:value-of select="iv:TotaleOperazioniAttive"/></td>
                    </tr>
                </xsl:if>
                <xsl:if test="iv:TotaleOperazioniPassive">
                    <tr>
                        <th>Totale Operazioni Passive</th>
                        <td><xsl:value-of select="iv:TotaleOperazioniPassive"/></td>
                    </tr>
                </xsl:if>
                <xsl:if test="iv:IvaEsigibile">
                    <tr>
                        <th>Iva Esigibile</th>
                        <td><xsl:value-of select="iv:IvaEsigibile"/></td>
                    </tr>
                </xsl:if>
                <xsl:if test="iv:IvaDetratta">
                    <tr>
                        <th>Iva Detratta</th>
                        <td><xsl:value-of select="iv:IvaDetratta"/></td>
                    </tr>
                </xsl:if>
                <xsl:if test="iv:IvaDovuta">
                    <tr>
                        <th>Iva Dovuta</th>
                        <td><xsl:value-of select="iv:IvaDovuta"/></td>
                    </tr>
                </xsl:if>
                <xsl:if test="iv:IvaCredito">
                    <tr>
                        <th>Iva Credito</th>
                        <td><xsl:value-of select="iv:IvaCredito"/></td>
                    </tr>
                </xsl:if>
                <xsl:if test="iv:DebitoPrecedente">
                    <tr>
                        <th>Debito Precedente</th>
                        <td><xsl:value-of select="iv:DebitoPrecedente"/></td>
                    </tr>
                </xsl:if>
                <xsl:if test="iv:CreditoPeriodoPrecedente">
                    <tr>
                        <th>Credito Periodo Precedente</th>
                        <td><xsl:value-of select="iv:CreditoPeriodoPrecedente"/></td>
                    </tr>
                </xsl:if>
                <xsl:if test="iv:CreditoAnnoPrecedente">
                    <tr>
                        <th>Credito Anno Precedente</th>
                        <td><xsl:value-of select="iv:CreditoAnnoPrecedente"/></td>
                    </tr>
                </xsl:if>
                <xsl:if test="iv:VersamentiAutoUE">
                    <tr>
                        <th>Versamenti Auto UE</th>
                        <td><xsl:value-of select="iv:VersamentiAutoUE"/></td>
                    </tr>
                </xsl:if>
                <xsl:if test="iv:CreditiImposta">
                    <tr>
                        <th>Crediti Imposta</th>
                        <td><xsl:value-of select="iv:CreditiImposta"/></td>
                    </tr>
                </xsl:if>
                <xsl:if test="iv:InteressiDovuti">
                    <tr>
                        <th>Interessi Dovuti</th>
                        <td><xsl:value-of select="iv:InteressiDovuti"/></td>
                    </tr>
                </xsl:if>
                <xsl:if test="iv:InteressiDovuti">
                    <tr>
                        <th>Interessi Dovuti</th>
                        <td><xsl:value-of select="iv:InteressiDovuti"/></td>
                    </tr>
                </xsl:if>
                <xsl:if test="iv:Metodo">
                    <tr>
                        <th>Metodo</th>
                        <td><xsl:value-of select="iv:Metodo"/></td>
                    </tr>
                </xsl:if>
                <xsl:if test="iv:Acconto">
                    <tr>
                        <th>Acconto</th>
                        <td><xsl:value-of select="iv:Acconto"/></td>
                    </tr>
                </xsl:if>
                <xsl:if test="iv:ImportoDaVersare">
                    <tr>
                        <th>Importo Da Versare</th>
                        <td><xsl:value-of select="iv:ImportoDaVersare"/></td>
                    </tr>
                </xsl:if>
                <xsl:if test="iv:ImportoACredito">
                    <tr>
                        <th>Importo A Credito</th>
                        <td><xsl:value-of select="iv:ImportoACredito"/></td>
                    </tr>
                </xsl:if>
                <tr>
                    <td colspan="2" class="separator"></td>
                </tr>
            </xsl:for-each>

        </table>

    </body>

</html>
