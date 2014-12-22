package com.k_int.claimId

class IdentityMapping {

  String localId
  String remoteId

  static constraints = {
    localId blank: false, nullable: false
    remoteId blank: false, nullable: false
  }
}
