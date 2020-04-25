require 'testing_framework'

test_suite do
  test do
    se_ha_ejecutado_el_test = false
    test_suite = TestSuite.new do
      test { se_ha_ejecutado_el_test = true }
    end

    test_suite.ejecutar

    assert se_ha_ejecutado_el_test
  end

  test do
    se_ha_ejecutado_el_test = false
    test_suite = TestSuite.new do
      test { se_ha_ejecutado_el_test = true }
    end

    deny se_ha_ejecutado_el_test
  end

  test do
    ejecutado = false
    test_suite = TestSuite.new do
      test do
        assert false
        ejecutado = true
      end
    end

    test_suite.ejecutar

    deny ejecutado
  end
end


