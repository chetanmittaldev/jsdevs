import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = [ "devbio" ]

  connect() {
    

      let isEmptyDevBio = this.devbioTarget.value.trim().length === 0

      function randomInteger(min, max) {
        return Math.floor(Math.random() * (max - min + 1)) + min;
      }

      let text1 = `   Good evening! I'm a [JOB_ROLE] with [X] years of professional experience. Previously I've worked as a [JOB_ROLE], and...

   I'm an expert at [SKILLS] and have significant experience using [TECHNOLOGIES]. I've worked on various web projects [IN MY SPARE TIME or PROFESSIONALLY]. For example I created a [SMART CONTRACT WHICH ...].

   I'm currently looking for a [PART TIME / FULL TIME / FREELANCER] as a [JOB_ROLE]. If you're interested in working together, please contact me.
        `

      let text2 = `   Good morning! I'm a [JOB_ROLE] with [X] years of professional experience. Previously I've worked as a [JOB_ROLE], and...

   I'm an expert at [SKILLS] and have significant experience using [TECHNOLOGIES]. I've worked on various web projects [IN MY SPARE TIME or PROFESSIONALLY]. For example I created a [SMART CONTRACT WHICH ...].

   I'm currently looking for a [PART TIME / FULL TIME / FREELANCER] as a [JOB_ROLE]. If you're interested in working together, please contact me.
        `

      let text3 = `   Hi there! I'm a [JOB_ROLE] with [X] years of professional experience. Previously I've worked as a [JOB_ROLE_1], as well as [JOB_ROLE_2]

   I'm comfortable with [SKILLS] and have significant experience using [TECHNOLOGIES]

   At work, what I enjoy the most is...

   On my spare time, I [CREATED/CONTRIBUTED TO] the following projects : ...

   I'm looking for...
        `

      if (isEmptyDevBio) {
        this.devbioTarget.innerHTML = [text1, text2, text3][randomInteger(0, 2)]
      }

  }
}
