// Place your Spring DSL code here
beans = {

 userDetailsService(grails.plugin.springsecurity.userdetails.GormUserDetailsService) {
    grailsApplication = ref('grailsApplication')
  }

  userDetailsByNameServiceWrapper(org.springframework.security.core.userdetails.UserDetailsByNameServiceWrapper) {
    userDetailsService = ref('userDetailsService')
  }

  preAuthenticatedAuthenticationProvider(org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationProvider) {
    preAuthenticatedUserDetailsService = ref('userDetailsByNameServiceWrapper')
  }

  securityContextPersistenceFilter(org.springframework.security.web.context.SecurityContextPersistenceFilter){
  }

  shibAuthFilter(com.k_int.shib.ShibAuthFilter){
    grailsApplication = ref('grailsApplication')
    authenticationManager = ref('authenticationManager')
  }

}
