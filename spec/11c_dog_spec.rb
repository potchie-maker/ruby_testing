# frozen_string_literal: true

require_relative '../lib/11c_dog'
require_relative '../spec/11a_shared_example_spec'

# The file order to complete this lesson:

# 1. Familiarize yourself with the three lib/11 files.
#    - lib/11a_pet.rb is the parent 'Pet' class of 'Cat' and 'Dog'
#    - lib/11b_cat.rb is a subclass 'Cat'
#    - lib/11c_dog.rb is a subclass 'Dog'
# 2. Review the tests in spec/11a_shared_example_spec.rb
# 3. Complete either spec/11b_cat_spec.rb or spec/11c_dog_spec.rb

describe Dog do
  subject(:toby) { described_class.new('Toby', nil, 'brown') }

  # Before you begin this file, make sure you have read the shared
  # example file: 11a_shared_examples_spec.rb. This test references
  # that file's first test in the below 'include_examples' line.
  context 'when Dog is a child class of Pet' do
    include_examples 'base class method name'
  end

  context 'when dog has name and color, but no breed' do
    # https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/have-attributes/
    it 'has name, breed & color attributes' do
      expect(toby).to have_attributes(name: 'Toby', breed: nil, color: 'brown')
    end
  end
end

# ASSIGNMENT - complete either Cat or Dog assignment
# (see 11b_cat_spec.rb for Cat assignment)

describe Dog do
  # Create a subject with your choice of dog name and optional breed/color.
  subject(:archer) { described_class.new('Archer', 'Beagle') }
  # Write a test using the second shared_example to test that dog responds to
  # talk ('WOOF!').
  context 'when cat shares method name' do
    include_examples 'shared method name'
  end

  # remove the 'x' before running this test
  it 'is not barking' do
    expect(archer).not_to be_barking
  end

  # remove the 'x' before running this test
  it 'is sleeping' do
    expect(archer).to be_sleeping
  end
end
