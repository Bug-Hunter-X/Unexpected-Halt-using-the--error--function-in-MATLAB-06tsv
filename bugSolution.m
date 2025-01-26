function result = myFunction(input)
  try
    % Some code here that might cause an error
    if input < 0
      error('Input must be non-negative');
    end
    % More code here
  catch ME
    % Handle the error gracefully
    warning('Error occurred: %s', ME.message);
    result = NaN; % Or some default value
  end
end

% Example of how the error is handled:
input = -1;
result = myFunction(input); 