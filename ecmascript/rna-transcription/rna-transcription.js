export default class Transcriptor {
  rnaTranscript() {
    let transcript = new Map();
    transcript.set('C', 'G');
    transcript.set('G', 'C');
    transcript.set('A', 'U');
    transcript.set('T', 'A');
    return transcript;
  }

  toRna(strand) {
    let transcript = this.rnaTranscript();
    if (strand.match(/[^CGAT]/))
      throw new Error('Invalid input DNA.');

    return Array.from(strand).map(n => transcript.get(n)).join('');
  }

}
