*!* mr_downloadstring

lparameters purl

local winhttp as 'winhttp' of 'winhttp'
local bytes

m.winhttp = newobject('winhttp', 'winhttp')

*m.winhttp.setproxy(2, 'localhost:8888')

m.winhttp.SetTimeouts(60000, 60000, 30000, 60000)

m.winhttp.open('GET', m.purl, .t.)

m.winhttp.gzip = .t.

m.winhttp.send()

do while m.winhttp.waitforresponse(0) = 0

	doevents

	_apisleep(50)

enddo

mr_winhttplog(m.winhttp)

if m.winhttp.responsestatus = 200

	m.bytes = m.winhttp.getresponse()

else

	m.bytes = ''

endif

return m.bytes