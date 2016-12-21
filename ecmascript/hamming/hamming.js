export default class Hamming {
  compute(firstStrand, secondStrand) {
    if (firstStrand.length != secondStrand.length)
      throw new Error('DNA strands must be of equal length.');

    return Array.from(firstStrand).filter(
      (nucleotide, index) => nucleotide !== secondStrand[index]
    ).length
  }
}
