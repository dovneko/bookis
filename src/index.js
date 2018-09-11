var riot = require('riot');
var  riotrouter = require('riot-router');

require('./tags/home.tag');
require('./tags/page1.tag');
require('./tags/page2.tag');
require('./tags/not-found.tag');

var Route = riotrouter.Route, 
    DefaultRoute = riotrouter.DefaultRoute, 
    NotFoundRoute = riotrouter.NotFoundRoute, 
    RedirectRoute = riotrouter.RedirectRoute;

router.routes([
    new Route({path:'page1/:name',tag: 'page1'}),
    new Route({path:'page2',tag: 'page2'}),
    // new Route({path:'home',tag: 'home'}),
    new DefaultRoute({tag: 'home'}),
    new NotFoundRoute({tag: 'not-found'})
]);

riot.mount('*');
router.start();
