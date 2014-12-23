package claimidentity

import grails.plugin.springsecurity.annotation.Secured
import org.codehaus.groovy.grails.commons.GrailsClassUtils


class NotifyController {

  def springSecurityService

  @Secured(['ROLE_USER', 'IS_AUTHENTICATED_FULLY'])
  def index() { 
    log.debug("Index ${params}");
    def result = [:]
    def user = springSecurityService.currentUser
    if ( ( user != null ) && ( params.remote != null ) ) {
      log.debug("Got remote user notification");
      def mapping = IdentityMapping.findByRemoteId(params.remote)
      if ( mapping == null ) {
        mapping = new IdentityMapping(localId:user.username,remoteId:params.remote)
        result.message="New mapping created for local username ${user.username}, remote: ${params.remote}";
      }
      else {
        mapping.remoteId = params.remote
        result.message="mapping updated for local username ${user.username}, remote: ${params.remote}";
      }
      mapping.save(flush:true, failOnError:true);
      return result
    }
  }
}
