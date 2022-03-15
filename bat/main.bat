"C:\Program Files\Java\jdk1.8.0_231\bin\java.exe" -Xmx512m -Djava.library.path=C:\spoon-5.0.1\data-integration\libswt\win32 -DKETTLE_HOME=C:\apps\pos -jar C:\spoon-5.0.1\data-integration\launcher\pentaho-application-launcher-5.0.1-stable.jar -main org.pentaho.di.kitchen.Kitchen /file:C:\apps\pos\etl\bajada\open_cashier.kjb /level Basic

"C:\Program Files\Java\jdk1.8.0_231\bin\java.exe" -Xmx512m -Djava.library.path=C:\spoon-5.0.1\data-integration\libswt\win32 -DKETTLE_HOME=C:\apps\pos -jar C:\spoon-5.0.1\data-integration\launcher\pentaho-application-launcher-5.0.1-stable.jar -main org.pentaho.di.kitchen.Kitchen /file:C:\apps\pos\etl\bajada\close_cashier_bajada.kjb /level Basic

"C:\Program Files\Java\jdk1.8.0_231\bin\java.exe" -Xmx512m -Djava.library.path=C:\spoon-5.0.1\data-integration\libswt\win32 -DKETTLE_HOME=C:\apps\pos -jar C:\spoon-5.0.1\data-integration\launcher\pentaho-application-launcher-5.0.1-stable.jar -main org.pentaho.di.kitchen.Kitchen /file:C:\apps\pos\etl\bajada\etlCustomers.kjb /level Basic

"C:\Program Files\Java\jdk1.8.0_231\bin\java.exe" -Xmx512m -Djava.library.path=C:\spoon-5.0.1\data-integration\libswt\win32 -DKETTLE_HOME=C:\apps\pos -jar C:\spoon-5.0.1\data-integration\launcher\pentaho-application-launcher-5.0.1-stable.jar -main org.pentaho.di.kitchen.Kitchen /file:C:\apps\pos\etl\bajada\items_stg_job.kjb /level Basic

"C:\Program Files\Java\jdk1.8.0_231\bin\java.exe" -Xmx512m -Djava.library.path=C:\spoon-5.0.1\data-integration\libswt\win32 -DKETTLE_HOME=C:\apps\pos -jar C:\spoon-5.0.1\data-integration\launcher\pentaho-application-launcher-5.0.1-stable.jar -main org.pentaho.di.kitchen.Kitchen /file:C:\apps\pos\etl\bajada\jobbajada.kjb /level Basic

"C:\Program Files\Java\jdk1.8.0_231\bin\java.exe" -Xmx512m -Djava.library.path=C:\spoon-5.0.1\data-integration\libswt\win32 -DKETTLE_HOME=C:\apps\pos -jar C:\spoon-5.0.1\data-integration\launcher\pentaho-application-launcher-5.0.1-stable.jar -main org.pentaho.di.kitchen.Kitchen /file:C:\apps\pos\etl\bajada\tran_item_stg(bajada).kjb /level Basic

"C:\Program Files\Java\jdk1.8.0_231\bin\java.exe" -Xmx512m -Djava.library.path=C:\spoon-5.0.1\data-integration\libswt\win32 -DKETTLE_HOME=C:\apps\pos -jar C:\spoon-5.0.1\data-integration\launcher\pentaho-application-launcher-5.0.1-stable.jar -main org.pentaho.di.kitchen.Kitchen /file:C:\apps\pos\etl\bajada\job_bajada_tran_tender_stg.kjb /level Basic

"C:\Program Files\Java\jdk1.8.0_231\bin\java.exe" -Xmx512m -Djava.library.path=C:\spoon-5.0.1\data-integration\libswt\win32 -DKETTLE_HOME=C:\apps\pos -jar C:\spoon-5.0.1\data-integration\launcher\pentaho-application-launcher-5.0.1-stable.jar -main org.pentaho.di.kitchen.Kitchen /file:C:\apps\pos\etl\bajada\file_transfer_main.kjb /level Basic