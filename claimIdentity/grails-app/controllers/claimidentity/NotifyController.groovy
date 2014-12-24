package claimidentity

import grails.plugin.springsecurity.annotation.Secured
import org.codehaus.groovy.grails.commons.GrailsClassUtils
import com.k_int.claimId.*;


class NotifyController {

  def springSecurityService

  @Secured(['ROLE_USER', 'IS_AUTHENTICATED_FULLY'])
  def index() { 
    log.debug("Index ${params}");
    def result = [:]
    def user = springSecurityService.currentUser
    if ( ( user != null ) && ( params.remote != null ) ) {
      log.debug("Got remote user notification");
      // def mapping = IdentityMapping.findByRemoteId(params.remote)
      def mapping = IdentityMapping.findByLocalId(user.username);
      
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
    else {
      log.debug("User was null (${user}) or params.remote (${params.remote} was null");
    }
  }
}
