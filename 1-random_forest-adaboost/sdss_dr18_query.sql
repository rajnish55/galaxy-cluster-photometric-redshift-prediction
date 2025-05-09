SELECT
p.z AS photoz,
s.z AS specz,
s.dered_u,s.dered_g,s.dered_r,s.dered_i,s.dered_z,
q.petroRad_u,q.petroRad_g,q.petroRad_r,q.petroRad_i,q.petroRad_z,
q.deVRad_u,q.deVRad_g,q.deVRad_r,q.deVRad_i,q.deVRad_z,
q.psfMag_u,q.psfMag_g,q.psfMag_r,q.psfMag_i,q.psfMag_z,
q.fiberMag_u,q.fiberMag_g,q.fiberMag_r,q.fiberMag_i,q.fiberMag_z,
q.expAB_u,q.expRad_u,q.deVAB_u,q.expAB_g,q.expRad_g,q.deVAB_g,
q.expAB_r,q.expRad_r,q.deVAB_r,q.expAB_i,q.expRad_i,q.deVAB_i,
q.expAB_z,q.expRad_z,q.deVAB_z,
s.dered_z - s.dered_i AS color_zi,
s.dered_z - s.dered_r AS color_zr,
s.dered_z - s.dered_g AS color_zg,
s.dered_z - s.dered_u AS color_zu,
s.dered_i - s.dered_r AS color_ir,
s.dered_i - s.dered_g AS color_ig,
s.dered_i - s.dered_u AS color_iu,
s.dered_r - s.dered_g AS color_rg,
s.dered_r - s.dered_u AS color_ru,
s.dered_g - s.dered_u AS color_gu,
q.fiberMag_z - q.fiberMag_i AS fiberColor_zi,
q.fiberMag_z - q.fiberMag_r AS fiberColor_zr,
q.fiberMag_z - q.fiberMag_g AS fiberColor_zg,
q.fiberMag_z - q.fiberMag_u AS fiberColor_zu,
q.fiberMag_i - q.fiberMag_r AS fiberColor_ir,
q.fiberMag_i - q.fiberMag_g AS fiberColor_ig,
q.fiberMag_i - q.fiberMag_u AS fiberColor_iu,
q.fiberMag_r - q.fiberMag_g AS fiberColor_rg,
q.fiberMag_r - q.fiberMag_u AS fiberColor_ru,
q.fiberMag_g - q.fiberMag_u AS fiberColor_gu,
q.psfMag_z - q.psfMag_i AS psfColor_zi,
q.psfMag_z - q.psfMag_r AS psfColor_zr,
q.psfMag_z - q.psfMag_g AS psfColor_zg,
q.psfMag_z - q.psfMag_u AS psfColor_zu,
q.psfMag_i - q.psfMag_r AS psfColor_ir,
q.psfMag_i - q.psfMag_g AS psfColor_ig,
q.psfMag_i - q.psfMag_u AS psfColor_iu,
q.psfMag_r - q.psfMag_g AS psfColor_rg,
q.psfMag_r - q.psfMag_u AS psfColor_ru,
q.psfMag_g - q.psfMag_u AS psfColor_gu,
q.fracDeV_u,q.fracDeV_g,q.fracDeV_r,q.fracDeV_i,q.fracDeV_z,
q.q_u, q.u_u, q.q_g,q.u_g, q.q_r,
q.u_r, q.q_i, q.u_i,q.q_z, q.u_z
INTO mydb.specPhotoDR18 FROM SpecPhotoAll AS s
JOIN photoObjAll AS q
ON s.objid=q.objid AND q.dered_u>0
AND q.dered_g>0 AND q.dered_r>0 AND q.dered_z>0 AND q.dered_i>0
AND q.expAB_r >0 AND q.modelMagErr_u < 0.3 AND q.modelMagErr_g <0.3
AND q.modelMagErr_r < 0.3 AND q.modelMagErr_i < 0.3 AND q.modelMagErr_z < 0.3
AND q.type=3 AND s.z > 0
LEFT OUTER JOIN Photoz AS p ON s.objid=p.objid