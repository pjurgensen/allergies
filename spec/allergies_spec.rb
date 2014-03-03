require ('rspec')
require ('allergies')

describe('allergy_score') do
  it('returns eggs with an allergy score of 1') do
    allergy_score(1).should(eq("eggs"))
  end
  it('returns peanuts if the score is 2') do
    allergy_score(2).should(eq("peanuts"))
  end
  it('returns peanuts and eggs if the score is 3') do
    allergy_score(3).should(eq("peanuts, eggs"))
  end
end
