"C:\Program Files\Java\jdk1.8.0_231\bin\java.exe" -Xmx512m -Djava.library.path=C:\spoon-5.0.1\data-integration\libswt\win32 -DKETTLE_HOME=C:\apps\pos -jar C:\spoon-5.0.1\data-integration\launcher\pentaho-application-launcher-5.0.1-stable.jar -main org.pentaho.di.kitchen.Kitchen /file:C:\apps\pos\etl\bajada\hist\open_cashier_stg_his.kjb /level Detailed

"C:\Program Files\Java\jdk1.8.0_231\bin\java.exe" -Xmx512m -Djava.library.path=C:\spoon-5.0.1\data-integration\libswt\win32 -DKETTLE_HOME=C:\apps\pos -jar C:\spoon-5.0.1\data-integration\launcher\pentaho-application-launcher-5.0.1-stable.jar -main org.pentaho.di.kitchen.Kitchen /file:C:\apps\pos\etl\bajada\hist\close_cashier_stg_his.kjb /level Basic

"C:\Program Files\Java\jdk1.8.0_231\bin\java.exe" -Xmx512m -Djava.library.path=C:\spoon-5.0.1\data-integration\libswt\win32 -DKETTLE_HOME=C:\apps\pos -jar C:\spoon-5.0.1\data-integration\launcher\pentaho-application-launcher-5.0.1-stable.jar -main org.pentaho.di.kitchen.Kitchen /file:C:\apps\pos\etl\bajada\hist\customer_stg_hist_bajada.kjb /level Basic

"C:\Program Files\Java\jdk1.8.0_231\bin\java.exe" -Xmx512m -Djava.library.path=C:\spoon-5.0.1\data-integration\libswt\win32 -DKETTLE_HOME=C:\apps\pos -jar C:\spoon-5.0.1\data-integration\launcher\pentaho-application-launcher-5.0.1-stable.jar -main org.pentaho.di.kitchen.Kitchen /file:C:\apps\pos\etl\bajada\hist\items_stg_his.kjb /level Basic

"C:\Program Files\Java\jdk1.8.0_231\bin\java.exe" -Xmx512m -Djava.library.path=C:\spoon-5.0.1\data-integration\libswt\win32 -DKETTLE_HOME=C:\apps\pos -jar C:\spoon-5.0.1\data-integration\launcher\pentaho-application-launcher-5.0.1-stable.jar -main org.pentaho.di.kitchen.Kitchen /file:C:\apps\pos\etl\bajada\hist\tran_head_hist.kjb /level Basic

"C:\Program Files\Java\jdk1.8.0_231\bin\java.exe" -Xmx512m -Djava.library.path=C:\spoon-5.0.1\data-integration\libswt\win32 -DKETTLE_HOME=C:\apps\pos -jar C:\spoon-5.0.1\data-integration\launcher\pentaho-application-launcher-5.0.1-stable.jar -main org.pentaho.di.kitchen.Kitchen /file:C:\apps\pos\etl\bajada\hist\tran_item_stg_hist(bajada).kjb /level Basic

"C:\Program Files\Java\jdk1.8.0_231\bin\java.exe" -Xmx512m -Djava.library.path=C:\spoon-5.0.1\data-integration\libswt\win32 -DKETTLE_HOME=C:\apps\pos -jar C:\spoon-5.0.1\data-integration\launcher\pentaho-application-launcher-5.0.1-stable.jar -main org.pentaho.di.kitchen.Kitchen /file:C:\apps\pos\etl\bajada\hist\tran_tender_stg.kjb /level Basic

"C:\Program Files\Java\jdk1.8.0_231\bin\java.exe" -Xmx512m -Djava.library.path=C:\spoon-5.0.1\data-integration\libswt\win32 -DKETTLE_HOME=C:\apps\pos -jar C:\spoon-5.0.1\data-integration\launcher\pentaho-application-launcher-5.0.1-stable.jar -main org.pentaho.di.kitchen.Kitchen /file:C:\apps\pos\etl\bajada\file_transfer_main.kjb /level Basic
