-module(gtld_data).





-export([

    as_string/0,
    parsed/0,
    ga_only/0

]).





%% @doc Lists only generally available gTLDs; drops date info.

ga_only() ->

    [ Name || [ Name, "LIVE - GA", _, _, _, _, _ ] <- parsed() ].





%% @doc Breaks data apart into list-of-lists .

parsed() ->

    [ sc:explode("\t", Line) || Line <- sc:explode("\r\n", as_string() ) ].





%% @doc Copy pasta string data from https://www.logicboxes.com/new-gtld-calendar .

as_string() -> 

"شبكة. (Arabic IDN '.shabaka')	LIVE - GA	General Availability	10/31/2013	-	1/2/2014	2/4/2014
.bike	LIVE - GA	General Availability	11/26/2013	1/25/2014	1/29/2014	2/5/2014
.clothing	LIVE - GA	General Availability	11/26/2013	1/25/2014	1/29/2014	2/5/2014
.guru	LIVE - GA	General Availability	11/26/2013	1/25/2014	1/29/2014	2/5/2014
.holdings	LIVE - GA	General Availability	11/26/2013	1/25/2014	1/29/2014	2/5/2014
.plumbing	LIVE - GA	General Availability	11/26/2013	1/25/2014	1/29/2014	2/5/2014
.singles	LIVE - GA	General Availability	11/26/2013	1/25/2014	1/29/2014	2/5/2014
.ventures	LIVE - GA	General Availability	11/26/2013	1/25/2014	1/29/2014	2/5/2014
.camera	LIVE - GA	General Availability	12/3/2013	2/1/2014	2/5/2014	2/12/2014
.equipment	LIVE - GA	General Availability	12/3/2013	2/1/2014	2/5/2014	2/12/2014
.estate	LIVE - GA	General Availability	12/3/2013	2/1/2014	2/5/2014	2/12/2014
.gallery	LIVE - GA	General Availability	12/3/2013	2/1/2014	2/5/2014	2/12/2014
.graphics	LIVE - GA	General Availability	12/3/2013	2/1/2014	2/5/2014	2/12/2014
.lighting	LIVE - GA	General Availability	12/3/2013	2/1/2014	2/5/2014	2/12/2014
.photography	LIVE - GA	General Availability	12/3/2013	2/1/2014	2/5/2014	2/12/2014
.uno	LIVE - GA	General Availability	12/9/2013	2/11/2014	2/12/2014	3/19/2014
.menu	LIVE - GA	General Availability	12/9/2013	2/9/2014	2/10/2014	3/17/2014
.construction	LIVE - GA	General Availability	12/10/2013	2/8/2014	2/12/2014	2/19/2014
.contractors	LIVE - GA	General Availability	12/10/2013	2/8/2014	2/12/2014	2/19/2014
.directory	LIVE - GA	General Availability	12/10/2013	2/8/2014	2/12/2014	2/19/2014
.kitchen	LIVE - GA	General Availability	12/10/2013	2/8/2014	2/12/2014	2/19/2014
.land	LIVE - GA	General Availability	12/10/2013	2/8/2014	2/12/2014	2/19/2014
.technology	LIVE - GA	General Availability	12/10/2013	2/8/2014	2/12/2014	2/19/2014
.today	LIVE - GA	General Availability	12/10/2013	2/8/2014	2/12/2014	2/19/2014
.diamonds	LIVE - GA	General Availability	12/17/2013	2/15/2014	2/19/2014	2/26/2014
.enterprises	LIVE - GA	General Availability	12/17/2013	2/15/2014	2/19/2014	2/26/2014
.tips	LIVE - GA	General Availability	12/17/2013	2/15/2014	2/19/2014	2/26/2014
.voyage	LIVE - GA	General Availability	12/17/2013	2/15/2014	2/19/2014	2/26/2014
.careers	LIVE - GA	General Availability	12/24/2013	2/22/2014	2/26/2014	3/5/2014
.photos	LIVE - GA	General Availability	12/24/2013	2/22/2014	2/26/2014	3/5/2014
.recipes	LIVE - GA	General Availability	12/24/2013	2/22/2014	2/26/2014	3/5/2014
.shoes	LIVE - GA	General Availability	12/24/2013	2/22/2014	2/26/2014	3/5/2014
.cab	LIVE - GA	General Availability	12/31/2013	3/1/2014	3/5/2014	3/12/2014
.domains	LIVE - GA	General Availability	12/31/2013	3/1/2014	3/5/2014	3/12/2014
.limo	LIVE - GA	General Availability	12/31/2013	3/1/2014	3/5/2014	3/12/2014
.company	LIVE - GA	General Availability	12/31/2013	3/1/2014	3/5/2014	3/19/2014
.academy	LIVE - GA	General Availability	1/7/2014	3/8/2014	3/12/2014	3/19/2014
.center	LIVE - GA	General Availability	1/7/2014	3/8/2014	3/12/2014	3/19/2014
.computer	LIVE - GA	General Availability	1/7/2014	3/8/2014	3/12/2014	3/19/2014
.management	LIVE - GA	General Availability	1/7/2014	3/8/2014	3/12/2014	3/19/2014
.systems	LIVE - GA	General Availability	1/7/2014	3/8/2014	3/12/2014	3/19/2014
.builders	LIVE - GA	General Availability	1/14/2014	3/15/2014	3/19/2014	3/26/2014
.email	LIVE - GA	General Availability	1/14/2014	3/15/2014	3/19/2014	3/26/2014
.solutions	LIVE - GA	General Availability	1/14/2014	3/15/2014	3/19/2014	3/26/2014
.support	LIVE - GA	General Availability	1/14/2014	3/15/2014	3/19/2014	3/26/2014
.training	LIVE - GA	General Availability	1/14/2014	3/15/2014	3/19/2014	3/26/2014
.camp	LIVE - GA	General Availability	1/21/2014	3/22/2014	3/26/2014	4/2/2014
.education	LIVE - GA	General Availability	1/21/2014	3/22/2014	3/26/2014	4/2/2014
.glass	LIVE - GA	General Availability	1/21/2014	3/22/2014	3/26/2014	4/2/2014
.institute	LIVE - GA	General Availability	1/21/2014	3/22/2014	3/26/2014	4/2/2014
.repair	LIVE - GA	General Availability	1/21/2014	3/22/2014	3/26/2014	4/2/2014
.coffee	LIVE - GA	General Availability	1/28/2014	3/29/2014	4/2/2014	4/9/2014
.florist	LIVE - GA	General Availability	1/28/2014	3/29/2014	4/2/2014	4/9/2014
.house	LIVE - GA	General Availability	1/28/2014	3/29/2014	4/2/2014	4/9/2014
.international	LIVE - GA	General Availability	1/28/2014	3/29/2014	4/2/2014	4/9/2014
.solar	LIVE - GA	General Availability	1/28/2014	3/29/2014	4/2/2014	4/9/2014
.buzz	LIVE - GA	General Availability	1/28/2014	3/31/2014	4/1/2014	4/15/2014
.club	LIVE - GA	General Availability	1/28/2014	3/29/2014	4/1/2014	5/7/2014
.holiday	LIVE - GA	General Availability	2/4/2014	4/5/2014	4/9/2014	4/16/2014
.marketing	LIVE - GA	General Availability	2/4/2014	4/5/2014	4/9/2014	4/16/2014
.codes	LIVE - GA	General Availability	2/11/2014	4/12/2014	4/16/2014	4/23/2014
.farm	LIVE - GA	General Availability	2/11/2014	4/12/2014	4/16/2014	4/23/2014
.viajes	LIVE - GA	General Availability	2/11/2014	4/12/2014	4/16/2014	4/23/2014
.agency	LIVE - GA	General Availability	2/18/2014	4/19/2014	4/23/2014	4/30/2014
.bargains	LIVE - GA	General Availability	2/18/2014	4/19/2014	4/23/2014	4/30/2014
.boutique	LIVE - GA	General Availability	2/18/2014	4/19/2014	4/23/2014	4/30/2014
.cheap	LIVE - GA	General Availability	2/18/2014	4/19/2014	4/23/2014	4/30/2014
.zone	LIVE - GA	General Availability	2/18/2014	4/19/2014	4/23/2014	4/30/2014
.berlin	LIVE - GA	General Availability	2/14/2014	2/16/2014	2/16/2014	2/18/2014
.cool	LIVE - GA	General Availability	2/25/2014	4/26/2014	4/30/2014	5/7/2014
.watch	LIVE - GA	General Availability	2/25/2014	4/26/2014	4/30/2014	5/7/2014
.works	LIVE - GA	General Availability	3/4/2014	5/3/2014	5/7/2014	5/14/2014
.expert	LIVE - GA	General Availability	3/4/2014	5/3/2014	5/7/2014	5/14/2014
.immobilien	Coming Soon - GA	Landrush / EAP	2/19/2014	4/21/2014	4/30/2014	5/28/2014
.ninja	Coming Soon - GA	Landrush / EAP	2/19/2014	4/21/2014	4/30/2014	5/28/2014
.dance	Coming Soon - GA	Landrush / EAP	2/5/2014	4/7/2014	4/16/2014	5/21/2014
.democrat	Coming Soon - GA	Landrush / EAP	2/5/2014	4/7/2014	4/16/2014	5/21/2014
.reviews	Coming Soon - GA	Landrush / EAP	2/26/2014	4/28/2014	5/7/2014	6/4/2014
.futbol	Coming Soon - GA	Landrush / EAP	2/26/2014	4/28/2014	5/7/2014	6/4/2014
.wiki	LIVE - Sunrise	Sunrise	3/11/2014	NA	NA	5/26/2014
.foundation	Coming Soon - GA	Landrush / EAP	3/11/2014	5/10/2014	5/14/2014	5/21/2014
.exposed	Coming Soon - GA	Landrush / EAP	3/11/2014	5/10/2014	5/14/2014	5/21/2014
.cruises	LIVE - Sunrise	Landrush / EAP Coming Soon	3/18/2014	5/17/2014	5/21/2014	5/28/2014
.flights	LIVE - Sunrise	Landrush / EAP Coming Soon	3/18/2014	5/17/2014	5/21/2014	5/28/2014
.rentals	LIVE - Sunrise	Landrush / EAP Coming Soon	3/18/2014	5/17/2014	5/21/2014	5/28/2014
.vacations	LIVE - Sunrise	Landrush / EAP Coming Soon	3/18/2014	5/17/2014	5/21/2014	5/28/2014
.villas	LIVE - Sunrise	Landrush / EAP Coming Soon	3/18/2014	5/17/2014	5/21/2014	5/28/2014
.xyz	LIVE - Sunrise	Sunrise	3/20/2014	NA	NA	6/2/2014
.tienda	LIVE - Sunrise	Sunrise	3/25/2014	5/24/2014	5/28/2014	6/4/2014
.condos	LIVE - Sunrise	Sunrise	3/25/2014	5/24/2014	5/28/2014	6/4/2014
.properties	LIVE - Sunrise	Sunrise	3/25/2014	5/24/2014	5/28/2014	6/4/2014
.maison	LIVE - Sunrise	Sunrise	3/25/2014	5/24/2014	5/28/2014	6/4/2014
.pink 	LIVE - GA	General Availability	3/11/2014	4/11/2014	4/16/2014	4/17/2014
.red	LIVE - GA	General Availability	3/11/2014	4/11/2014	4/16/2014	4/17/2014
.shiksha	LIVE - GA	General Availability	3/11/2014	4/11/2014	4/16/2014	4/17/2014
.kim	LIVE - GA	General Availability	3/11/2014	4/11/2014	4/16/2014	4/17/2014
.blue	LIVE - GA	General Availability	3/14/2014	4/13/2014	4/16/2014	4/17/2014
..移动 (Chinese - Mobile)	LIVE - GA	General Availability	3/14/2014	4/13/2014	4/16/2014	4/17/2014
.social	Coming Soon - GA	Landrush / EAP	2/26/2014	4/28/2014	5/7/2014	6/4/2014
.dating	LIVE - Sunrise	Sunrise	4/1/2014	5/31/2014	6/4/2014	6/11/2014
.events	LIVE - Sunrise	Sunrise	4/1/2014	5/31/2014	6/4/2014	6/11/2014
.partners	LIVE - Sunrise	Sunrise	4/1/2014	5/31/2014	6/4/2014	6/11/2014
.productions	LIVE - Sunrise	Sunrise	4/1/2014	5/31/2014	6/4/2014	6/11/2014
.bid	LIVE - Sunrise	Sunrise	3/31/2014	5/30/2014	6/8/2014	6/9/2014
.trade	LIVE - Sunrise	Sunrise	3/31/2014	5/30/2014	6/8/2014	6/9/2014
.webcam	LIVE - Sunrise	Sunrise	3/31/2014	5/30/2014	6/8/2014	6/9/2014
.pub	LIVE - Sunrise	Sunrise	4/2/2014	6/2/2014	6/8/2014	6/9/2014
.community	LIVE - Sunrise	Sunrise	4/8/2014	6/7/2014	6/11/2014	6/18/2014
.catering	LIVE - Sunrise	Sunrise	4/8/2014	6/7/2014	6/11/2014	6/18/2014
.cards	LIVE - Sunrise	Sunrise	4/8/2014	6/7/2014	6/11/2014	6/18/2014
.cleaning	LIVE - Sunrise	Sunrise	4/8/2014	6/7/2014	6/11/2014	6/18/2014
.tools	LIVE - Sunrise	Sunrise	4/15/2014	6/14/2014	6/18/2014	6/25/2014
.industries	LIVE - Sunrise	Sunrise	4/15/2014	6/14/2014	6/18/2014	6/25/2014
.parts	LIVE - Sunrise	Sunrise	4/15/2014	6/14/2014	6/18/2014	6/25/2014
.supplies	LIVE - Sunrise	Sunrise	4/15/2014	6/14/2014	6/18/2014	6/25/2014
.supply	LIVE - Sunrise	Sunrise	4/15/2014	6/14/2014	6/18/2014	6/25/2014
.moda	LIVE - Sunrise	Sunrise	4/9/2014	6/9/2014	6/18/2014	7/16/2014
.kaufen	LIVE - Sunrise	Sunrise	4/16/2014	6/16/2014	6/25/2014	7/23/2014
.ink	LIVE - Sunrise	Sunrise	3/31/2014	6/4/2014	6/5/2014	6/23/2014
.bar	LIVE - Sunrise	Sunrise	4/9/2014	6/10/2014	6/11/2014	7/14/2014
.rest	LIVE - Sunrise	Sunrise	4/9/2014	6/10/2014	6/11/2014	7/14/2014
.report	LIVE - Sunrise	Sunrise	4/22/2014	6/21/2014	6/25/2014	7/2/2014
.fish	LIVE - Sunrise	Sunrise	4/22/2014	6/21/2014	6/25/2014	7/2/2014
.vision	LIVE - Sunrise	Sunrise	4/22/2014	6/21/2014	6/25/2014	7/2/2014
.在线 (.online - Chinese IDN)	LIVE - GA	General Availability	1/17/2014	3/17/2014	3/20/2014	4/28/2014
.中文网 (.network- Chinese IDN) 	LIVE - GA	General Availability	1/17/2014	3/17/2014	3/20/2014	4/28/2014
.build	LIVE - GA	General Availability	1/31/2014	3/28/2014	3/31/2014	4/29/2014
.opr (.org - Russian Translation)	LIVE - Sunrise	Sunrise	4/29/2014	NA	NA	5/27/2014
.机构 (.org – Chinese Translation)	LIVE - Sunrise	Sunrise	4/29/2014	NA	NA	5/27/2014
.संगठन (.org – Hindi Translation)	LIVE - Sunrise	Sunrise	4/29/2014	NA	NA	5/27/2014
.services	LIVE - Sunrise	Sunrise	4/29/2014	7/5/2014	7/9/2014	7/16/2014
.gripe	LIVE - Sunrise	Sunrise	5/6/2014	7/5/2014	7/9/2014	7/16/2014
.exchange	LIVE - Sunrise	Sunrise	5/6/2014	7/5/2014	7/9/2014	7/16/2014
.capital	LIVE - Sunrise	Sunrise	5/6/2014	7/5/2014	7/9/2014	7/16/2014
.engineering	LIVE - Sunrise	Sunrise	5/6/2014	7/5/2014	7/9/2014	7/16/2014
.actor	Coming Soon	Sunrise	4/30/2014	6/30/2014	7/9/2014	8/6/2014
.kiwi	Coming Soon - GA	General Availability	1/16/2014	3/17/2014	3/18/2014	5/1/2014
.london	LIVE - Sunrise	Sunrise	4/29/2014	7/31/2014	4/29/2014	9/9/2014
.nyc	Coming Soon	Sunrise	5/5/2014	6/20/2014	8/4/2014	10/8/2014
.associates	LIVE - Sunrise	Sunrise	5/13/2014	7/12/2014	7/16/2014	7/23/2014
.media	LIVE - Sunrise	Sunrise	5/13/2014	7/12/2014	7/16/2014	7/23/2014
.lease	LIVE - Sunrise	Sunrise	5/13/2014	7/12/2014	7/16/2014	7/23/2014
.pictures	Coming Soon	Sunrise	5/13/2014	7/12/2014	7/16/2014	7/23/2014
.reisen	Coming Soon	Coming Soon	5/20/2014	7/19/2014	7/23/2014	7/30/2014
.toys	Coming Soon	Coming Soon	5/20/2014	7/19/2014	7/23/2014	7/30/2014
.town	Coming Soon	Coming Soon	5/20/2014	7/19/2014	7/23/2014	7/30/2014
.university	Coming Soon	Coming Soon	5/20/2014	7/19/2014	7/23/2014	7/30/2014".
