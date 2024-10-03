require 'rails_helper'

RSpec.describe Estudiante, type: :model do
  context "nombres" do
    it { should validate_presence_of :nombres }
    it { should validate_length_of(:nombres).is_at_most(40) }
    it { should_not allow_value("123123").for(:nombres) }
    it { should allow_value("abcd").for(:nombres) }
    end

    context "apellidos" do
      it { should validate_presence_of :apellidos }
      it { should validate_length_of(:apellidos).is_at_most(40) }
      it { should_not allow_value("123123").for(:apellidos) }
      it { should allow_value("abcd").for(:apellidos) }
      end

      context "carrera" do
        it { should validate_presence_of :carrera }
        it { should validate_length_of(:carrera).is_at_most(40) }
        it { should_not allow_value("123123").for(:carrera) }
        it { should allow_value("abcd").for(:carrera) }
        end

        context "carnet" do
          it { should validate_presence_of :carnet }
          it { should validate_length_of(:carnet).is_at_most(15) }
          it { should allow_value("123456789-").for(:carnet) }
          it { should_not allow_value("abc123-").for(:carnet) }
          it { should_not allow_value("123-456").for(:carnet) }
          it { should_not allow_value("12345").for(:carnet) }
        end
end
