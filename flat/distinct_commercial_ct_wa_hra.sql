SELECT  COUNT(DISTINCT vp.mmsi) FROM vessel_profile vp, vessel v
	WHERE v.mmsi = vp.mmsi
	AND in_wra_wa = 'true'
	AND v.vessel_type_code BETWEEN 70 AND 89;
