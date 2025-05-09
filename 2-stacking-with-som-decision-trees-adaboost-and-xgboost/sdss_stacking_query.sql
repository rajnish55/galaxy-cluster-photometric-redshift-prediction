SELECT
s.specObjID, s.objid, s.ra, s.dec,
s.z AS specz, s.zerr AS specz_err,
s.type AS specType, q.type AS photpType,
q.extinction_u, q.extinction_g, q.extinction_r,
q.extinction_i, q.extinction_z,
q.psfMag_u, q.psfMagErr_u,
q.psfMag_g, q.psfMagErr_g,
q.psfMag_r, q.psfMagErr_r,
q.psfMag_i, q.psfMagErr_i,
q.psfMag_z, q.psfMagErr_z
INTO mydb.modifiedDR18
FROM SpecPhotoAll AS s
JOIN photoObjAll AS q
ON s.objid = q.objid
AND q.cModelMag_g > 0
AND q.cModelMag_r > 0
AND q.cModelMag_z > 0
LEFT OUTER JOIN Photoz AS p
ON s.objid = p.objid;