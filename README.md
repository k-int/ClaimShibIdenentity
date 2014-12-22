ClaimShibIdenentity
===================

A tool that assists migrating service providers from one entity id to another by allowing users to set up an equivalence between targeted person id



Shib Config..

Create a ~/.grails/claimIdentity-config.groovy file and add

grails.plugins.springsecurity.shibboleth.active = true
grails.plugins.springsecurity.shibboleth.principalUsername.attribute = 'eppn'
ldap.active=false
ldap.authorities.retrieveGroupRoles=false
grails.plugins.springsecurity.shibboleth.roles.attribute='ROLE_USER'
grails.plugins.springsecurity.shibboleth.principalUsername.attribute='persistent-id'
grails.plugins.springsecurity.shibboleth.username.attribute='persistent-id'
