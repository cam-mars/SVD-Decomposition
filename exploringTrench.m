A = importdata('mariana_depth (1).csv'); %import data
lon = importdata("mariana_longitude.csv");
lat = importdata("mariana_latitude.csv");

depthkm = A./1000; %convert to km

[latGrid, lonGrid] = meshgrid(unique(lat),unique(lon)); %takes in unique values in lon and lat and turns them into a mesh grid
depthGrid = griddata(lat,lon,depthkm,latGrid,lonGrid); %combine all three matricies into a grid

figure; %for the surface
surf(lonGrid, latGrid, depthGrid); %make a 3D surface
view(2); %view from above
shading interp; %smooth color transitions on the surface
colormap jet; %color map from blue to red based on height
colorbar; %adds color scale to map
xlabel('Longitude');
ylabel('latitude');
title('Depth (in kilometers) - Surface Plot');

figure %for the contour plot
contour(lonGrid, latGrid, depthGrid, -11:1:11); %contours over given interval
clabel(contour(lonGrid, latGrid, depthGrid, -11:1:11), 'manual'); %add labels
colormap jet; %color map from blue to red based on height
colorbar; %adds color scale to map
xlabel('Longitude');
ylabel('Latitude');
title('Depth (in kilometers)');

% Find the minimum depth and its index (returns all occurrences if duplicates)
[minDepth, minIndices] = min(depthkm);

% If there are multiple, pick the first one
minIndex = minIndices(1);

% Get the corresponding latitude and longitude for the minimum depth
minLat = lat(minIndex);
minLon = lon(minIndex);

% Display the result
fprintf('The deepest part of the trench is %.2f km at latitude %.4f and longitude %.4f.\n', minDepth, minLat, minLon);

