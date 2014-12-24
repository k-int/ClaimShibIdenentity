<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="KBPlus identity claim service"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
    <asset:stylesheet src="live.css"/>
    <asset:stylesheet src="style.css"/>
    <asset:javascript src="bootstrap-min.js"/>
    <asset:javascript src="application.js"/>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:javascript src="https://uwp-jb.jisc.ac.uk/client.js?site=QPlZQ"/>
    <asset:javascript src="https://assets.zendesk.com/external/zenbox/v2.6/zenbox.js"/>
    <g:layoutHead/>
  </head>
  <body class="public">

    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
     

            <img class="brand" src="assets/kb_large_icon.png" alt="Knowledge Base + logo">

          <ul class="nav">
              <li id="home" class="active">
                <a href="/">KBPlus identity claim service</a>
              </li>
          </ul>

        </div>
      </div>
    </div>

    <div class="navbar-push-public"></div>

    <g:layoutBody/>

    <div id="Footer">
        <div class="navbar navbar-footer">
            <div class="navbar-inner">
                <div class="container">
                    <div>
                        <ul class="footer-sublinks nav">
                            <li><a href=${createLink(uri: '/terms-and-conditions')}>Terms & Conditions</a></li>
                            <li><a href=${createLink(uri: '/privacy-policy')}>Privacy Policy</a></li>
                            <li><a href=${createLink(uri: '/freedom-of-information-policy')}>Freedom of Information Policy</a></li>
                        </ul>
                    </div>
                    <g:set var="appVersion" value="${grailsApplication.metadata['app.version']}"/>
                    <div class="pull-right">
                        <div class="nav-collapse">
                            <ul class="nav">
                                <li class="dropdown">
                                    <a href="#"
                                       class="dropdown-toggle"
                                       data-toggle="dropdown">
                                        Tools
                                        <b class="caret"></b>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="http://www.kbplus.ac.uk/kbplus/myInstitutions/index">KB+</a></li>
                                        <li><a href="http://demo.kbplus.ac.uk/kbplus/myInstitutions/index">KB+ Demo</a></li>
                                        <li><a href="http://test.kbplus.ac.uk/kbplus/myInstitutions/index">KB+ Sandpit</a></li>
                                    </ul>
                                </li>
                                <li><a href="https://github.com/k-int/KBPlus/releases/tag/${appVersion}">
                                v${appVersion}</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
  
        <div class="clearfix"></div>
  
        <div class="footer-links container">
            <div class="row">
                <div class="pull-left">
                    <a href="http://www.jisc-collections.ac.uk/"><div class="sprite sprite-jisc_collections_logo">JISC Collections</div></a>
                </div>
  
                <div class="pull-right">
                    <a href="http://www.kbplus.ac.uk"><div class="sprite sprite-kbplus_logo">Knowledge Base Plus</div></a>
                </div>
                
            </div>
        </div>
    </div>
  
    <style type="text/css" media="screen, projection">
      @import url(//assets.zendesk.com/external/zenbox/v2.6/zenbox.css);
    </style>

    <script type="text/javascript">
      if (typeof(Zenbox) !== "undefined") {
        Zenbox.init({
          dropboxID:   "${grailsApplication.config.ZenDeskDropboxID?:20234067}",
          url:         "${grailsApplication.config.ZenDeskBaseURL?:'https://kbplus.zendesk.com'}",
          tabTooltip:  "Support",
          tabImageURL: "https://assets.zendesk.com/external/zenbox/images/tab_support_right.png",
          tabColor:    "#008000",
          tabPosition: "Right"
        });
      }
  </script>

  </body>
</html>
