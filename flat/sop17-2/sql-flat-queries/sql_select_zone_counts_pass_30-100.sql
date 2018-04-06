SELECT	vp.partition_code AS sample,
	count(CASE WHEN in_region_wa 	THEN 1 ELSE NULL END) AS region_wa_hit,
	count(CASE WHEN in_region_ea 	THEN 1 ELSE NULL END) AS region_ea_hit,
	count(CASE WHEN in_region_sea 	THEN 1 ELSE NULL END) AS region_sea_hit,
	count(CASE WHEN in_vra_wa 	THEN 1 ELSE NULL END) AS vra_wa_hit,
	count(CASE WHEN in_vra_ea 	THEN 1 ELSE NULL END) AS vra_ea_hit,
	count(CASE WHEN in_vra_sea 	THEN 1 ELSE NULL END) AS vra_sea_hit,
	count(CASE WHEN in_wra_wa 	THEN 1 ELSE NULL END) AS wra_wa_hit,
	count(CASE WHEN in_wra_ea 	THEN 1 ELSE NULL END) AS wra_ea_hit,
	count(CASE WHEN in_wra_sea 	THEN 1 ELSE NULL END) AS wra_sea_hit,
	count(CASE WHEN in_hra_ea_old 	THEN 1 ELSE NULL END) AS hra_ea_old_hit,
	count(CASE WHEN in_hra_ea_old_nowedge 	THEN 1 ELSE NULL END) AS hra_ea_old_nowedge_hit,
	count(CASE WHEN in_hra_ea_new 	THEN 1 ELSE NULL END) AS hra_ea_new_hit,
	count(CASE WHEN in_ibf_woa_ea 	THEN 1 ELSE NULL END) AS ibf_woa_ea_hit,
	count(CASE WHEN in_ibf_xrz_ea 	THEN 1 ELSE NULL END) AS ibf_xrz_ea_hit,
	count(CASE WHEN in_ibf_hra_wa 	THEN 1 ELSE NULL END) AS ibf_hra_wa_hit,
	count(CASE WHEN in_ibf_hra_ea 	THEN 1 ELSE NULL END) AS ibf_hra_ea_hit,
	count(CASE WHEN in_aoi_sea 	THEN 1 ELSE NULL END) AS aoi_sea_hit,
	count(CASE WHEN in_jcc_wa 	THEN 1 ELSE NULL END) AS jcc_wa_hit,
	count(CASE WHEN in_jcc_ea 	THEN 1 ELSE NULL END) AS jcc_ea_hit,
	count(CASE WHEN in_jcc_sea 	THEN 1 ELSE NULL END) AS jcc_sea_hit,
	count(CASE WHEN in_atalanta_red		THEN 1 ELSE NULL END) AS atalanta_red_hit,
	count(CASE WHEN in_atalanta_goa		THEN 1 ELSE NULL END) AS atalanta_goa_hit,
	count(CASE WHEN in_atalanta_somali	THEN 1 ELSE NULL END) AS atalanta_somali_hit,
	count(CASE WHEN in_atalanta_south	THEN 1 ELSE NULL END) AS atalanta_south_hit,
	count(CASE WHEN in_atalanta_north	THEN 1 ELSE NULL END) AS atalanta_north_hit,
	count(CASE WHEN in_atalanta_indian	THEN 1 ELSE NULL END) AS atalanta_indian_hit,
	count(CASE WHEN in_irtc_east 	THEN 1 ELSE NULL END) AS irtc_east_hit,
	count(CASE WHEN in_irtc_west 	THEN 1 ELSE NULL END) AS irtc_west_hit,
	count(CASE WHEN in_strait_malacca 	THEN 1 ELSE NULL END) AS strait_malacca_hit,
	count(CASE WHEN in_strait_singapore	THEN 1 ELSE NULL END) AS strait_singapore_hit,
	count(CASE WHEN in_strait_sunda 	THEN 1 ELSE NULL END) AS strait_sunda_hit,
	count(CASE WHEN in_bgd_vicinity 	THEN 1 ELSE NULL END) AS bgd_vicinity_hit,
	count(CASE WHEN in_nga_naa	THEN 1 ELSE NULL END) AS nga_naa_hit,
	count(CASE WHEN in_nga_la	THEN 1 ELSE NULL END) AS nga_la_hit,
	count(CASE WHEN in_nga_sts	THEN 1 ELSE NULL END) AS nga_sts_hit,
	count(CASE WHEN in_nga_saa	THEN 1 ELSE NULL END) AS nga_saa_hit,
	count(CASE WHEN in_nga_saa_mez	THEN 1 ELSE NULL END) AS nga_saa_mez_hit,
	count(CASE WHEN in_ben_1_storage	THEN 1 ELSE NULL END) AS ben_1_storage_hit,
	count(CASE WHEN in_ben_2_tanker	THEN 1 ELSE NULL END) AS ben_2_tanker_hit,
	count(CASE WHEN in_ben_3_tanker	THEN 1 ELSE NULL END) AS ben_3_tanker_hit,
	count(CASE WHEN in_ben_4_sts	THEN 1 ELSE NULL END) AS ben_4_sts_hit,	
	count(CASE WHEN in_tgo_waiting	THEN 1 ELSE NULL END) AS tgo_waiting_hit,
	count(CASE WHEN in_tgo_berthing	THEN 1 ELSE NULL END) AS tgo_berthing_hit,
	count(CASE WHEN in_gha_anchorage	THEN 1 ELSE NULL END) AS gha_anchorage_hit,
	count(CASE WHEN in_gha_sts	THEN 1 ELSE NULL END) AS gha_sts_hit,
	count(CASE WHEN cont_region_wa	THEN 1 ELSE NULL END) AS region_wa_cov,
	count(CASE WHEN cont_region_ea	THEN 1 ELSE NULL END) AS region_ea_cov,
	count(CASE WHEN cont_region_sea	THEN 1 ELSE NULL END) AS region_sea_cov,
	count(CASE WHEN cont_vra_wa	THEN 1 ELSE NULL END) AS vra_wa_cov,
	count(CASE WHEN cont_vra_ea	THEN 1 ELSE NULL END) AS vra_ea_cov,
	count(CASE WHEN cont_vra_sea	THEN 1 ELSE NULL END) AS vra_sea_cov,
	count(CASE WHEN cont_wra_wa	THEN 1 ELSE NULL END) AS wra_wa_cov,
	count(CASE WHEN cont_wra_ea	THEN 1 ELSE NULL END) AS wra_ea_cov,
	count(CASE WHEN cont_wra_sea	THEN 1 ELSE NULL END) AS wra_sea_cov,
	count(CASE WHEN cont_hra_ea_old	THEN 1 ELSE NULL END) AS hra_ea_old_cov,
	count(CASE WHEN cont_hra_ea_old_nowedge	THEN 1 ELSE NULL END) AS hra_ea_old_nowedge_cov,
	count(CASE WHEN cont_hra_ea_new	THEN 1 ELSE NULL END) AS hra_ea_new_cov,
	count(CASE WHEN cont_ibf_woa_ea	THEN 1 ELSE NULL END) AS ibf_woa_ea_cov,
	count(CASE WHEN cont_ibf_xrz_ea	THEN 1 ELSE NULL END) AS ibf_xrz_ea_cov,
	count(CASE WHEN cont_ibf_hra_wa	THEN 1 ELSE NULL END) AS ibf_hra_wa_cov,
	count(CASE WHEN cont_ibf_hra_ea	THEN 1 ELSE NULL END) AS ibf_hra_ea_cov,
	count(CASE WHEN cont_aoi_sea	THEN 1 ELSE NULL END) AS aoi_sea_cov,
	count(CASE WHEN cont_bgd_vicinity	THEN 1 ELSE NULL END) AS bgd_vicinity_cov
FROM vessel_profile vp
LEFT OUTER JOIN vessel v ON (v.mmsi=vp.mmsi)
WHERE	v.vessel_type_code BETWEEN 60 AND 69
AND	v.length BETWEEN 30 AND 100
AND	vp.ping_count > 1
GROUP BY vp.partition_code
ORDER BY vp.partition_code ASC;
