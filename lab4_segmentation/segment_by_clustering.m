function my_segmentation = segment_by_clustering(rgb_image,feature_space, clustering_method,n_clusters)
    if strcmp(feature_space,'RGB') == 1
        if strcmp(clustering_method,'Kmeans') ==1
            disp('Segmentación de imagen RGB por Kmeans')
            Kmeans_lab04(rgb_image,n_clusters)
            disp('terminó')
        
        else
            if strcmp(clustering_method,'GMM') ==1
               disp('Segmentación de imagen RGB por GMM')
               GMM_lab04(rgb_image,n_clusters)
               disp('terminó')
        
            else
                disp('Por favor escriba en "clustering_method" Kmeans o Lab')
            end
        end
           
    else
                if strcmp(feature_space,'Lab') == 1
            if strcmp(clustering_method,'Kmeans') ==1
                disp('Segmentación de imagen Lab por Kmeans')
                RGB2Lab(rgb_image)
                Kmeans_lab04(rgb_image,n_clusters)
                disp('terminó')

            else
                if strcmp(clustering_method,'GMM') ==1
                   disp('Segmentación de imagen Lab por GMM')
                   RGB2Lab(rgb_image)
                   GMM_lab04(rgb_image,n_clusters)
                   disp('terminó')

                else
                    disp('Por favor escriba en "clustering_method" Kmeans o Lab')
                end
            end
           
        else
        disp('Por favor escriba en "feature_space" RGB o Lab')
                end

    end
end

   

