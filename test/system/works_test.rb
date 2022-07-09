require "application_system_test_case"

class WorksTest < ApplicationSystemTestCase
  setup do
    @work = works(:one)
  end

  test "visiting the index" do
    visit works_url
    assert_selector "h1", text: "Empleos"
  end

  test "Creando un Cargo" do
    visit works_url
    click_on "Nuevo Empleo"

    fill_in "Cantidad de Vacantes", with: @work.cargo
    fill_in "Description", with: @work.description
    fill_in "Modalidad", with: @work.modalidad
    fill_in "Rango_Salarial", with: @work.rango_salarial
    fill_in "Fecha de Inicio", with: @work.release_date
    fill_in "Cargo", with: @work.cargo
    click_on "Crear Cargo"

    assert_text "El puesto de trabajo se ha creado!!"
    click_on "Back"
  end

  test "actualizar el puesto de trabajo" do
    visit works_url
    click_on "Edit", match: :first

    fill_in "Cantidad de Vacantes", with: @work.cargo
    fill_in "Description", with: @work.description
    fill_in "Modalidad", with: @work.modalidad
    fill_in "Rango_Salarial", with: @work.rango_salarial
    fill_in "Fecha de Inicio", with: @work.release_date
    fill_in "Cargo", with: @work.cargo
    click_on "Update work"

    assert_text "El puesto de trabajo de ha actualizado!!"
    click_on "Back"
  end

  test "Eliminar cargo" do
    visit works_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "El puesto de trabajo ha sido eliminado!!"
  end
end
