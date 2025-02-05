pkg load symbolic;
syms n x;
finish = true;

while finish
  disp(['¿Qué desea hacer? Ingrese el número:'])
  disp(['1- Dada una función, calcular la serie de Fourier'])
  disp(['2- Ingresar una función para visualizar el gráfico'])
  disp(['3- Salir'])
  cond = input('►')
  if (cond == 1)
    k = input('Ingrese el valor de n para el que quiera su serie de Fourier  ►');
    func = [];
    lim = [];
    band = true;
    aux = input('Ingrese el primer límite inferior ►');
    lim = [lim, aux];
    while band
      aux = input('Ingrese la función ►');
      func = [func, aux];
      aux = input('Ingrese el límite superior ►');
      lim = [lim, aux];
      band = input('¿Quiere continuar? true/false ►');
    end
    sumpar = input ('¿Desea visualizar las sumas parciales de la serie? true/false ►')
    disp(['¿Quiere utilizar solo cosenos, senos o ambos?'])
    disp(['1- Solo cosenos (Espejado sobre el eje vertical)'])
    disp(['2- Solo senos (Rotado 180°)'])
    disp(['3- Ambos (Se repite la función original)'])
    semi = input('►')
    %{
    k=20
    func = [0, 1]
    lim = [-pi, 0, pi]
    %}
    T = lim(end)-lim(1);
    w = 2*pi/T;
    ao = 0;
    for i = 1:(length(func))
       funaux = @(x) func(i);
       ao = ao + int(funaux, x, lim(i), lim(i+1))
    endfor
    ao = ao * 2/T

    an = 0;
    if (semi==1 | semi==3)
      for i = 1:(length(func))
         funaux = @(x) (func(i) * cos(n*w*x));
         an = an + int(funaux, x, lim(i), lim(i+1));
      endfor
      an = an * 2/T
    endif

    bn = 0;
    if (semi==2 | semi==3)
      for i = 1:(length(func))
         funaux = @(x) (func(i) * sin(n*w*x));
         bn = bn + int(funaux, x, lim(i), lim(i+1));
      endfor
      bn = bn * 2/T
     endif
    serie = ao/2
    for i = 1:k
      serie = serie + subs(an, n, i)*cos(i*w*x)+subs(bn, n, i)*sin(i*w*x)
      if sumpar
        a = ezplot(serie);
        title(['Gráfico de la serie ' num2str(i)]);
        grid on
      endif
    endfor
    if not(sumpar)
      a = ezplot(serie);
      title('Gráfico de la serie');
      grid on
    endif
    waitfor(a)
  elseif (cond == 2)
    disp(['1- Ingrese a0'])
    ao = input('►')

    disp(['2- Ingrese w0'])
    w = input('►')

    disp(['3- Ingrese an'])
    an = input('►')

    disp(['4- Ingrese bn'])
    bn = input('►')

    disp(['5- Ingrese k'])
    k = input('►')

    serie = ao/2
    for i = 1:k
      serie = serie + subs(an, n, i)*cos(i*w*x)+subs(bn, n, i)*sin(i*w*x)
      a = ezplot(serie);
      title(['Gráfico de la serie ' num2str(i)]);
      grid on
    endfor
    waitfor(a)
  endif
  finish = input('¿Desea realizar otra operación? true/false ►')
endwhile
disp(['¡Muchas gracias por usar este programa!'])
disp(['Autores: ►Beneyto, Mateo'])
disp(['►Castro, Mauricio Nicolás'])
disp(['►Martínez, Agostina Denise'])
pause(5)
