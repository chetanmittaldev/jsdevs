import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = [ "devbio" ]

  connect() {
    console.log("Hello, Stimulus!", this.element)
    let emptyDevBio = !this.devbioTarget.value?.length
    console.log("Hello... emptyDevBio ? ", emptyDevBio)
    if (emptyDevBio) {
      this.devbioTarget.innerHTML = `      Hi there! I'm a [JOB_ROLE] with [X] years of professional experience based in [LOCATION]. Previously I've worked as a [JOB_ROLE] at [COMPANIES] and...

      I'm an expert at [SKILLS] and have significant experience using [TECHNOLOGIES]. I've worked on various web projects [IN MY SPARE TIME or PROFESSIONALLY]. For example I created a [SMART CONTRACT WHICH ...].

      I'm currently looking for a [PART TIME / FULL TIME / FREELANCER] as a [JOB_ROLE]. If you're interested in working together, please contact me.
      `
    }
  }
}
