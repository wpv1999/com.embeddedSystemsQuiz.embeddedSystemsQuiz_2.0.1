.class final Lcom/google/android/gms/internal/zzfd$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zzd(Lcom/google/android/gms/internal/zzmd;)V
    .registers 5

    const-string v0, "Received support message, responding."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdh(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzmd;->zzec()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzd;->zzamr:Lcom/google/android/gms/ads/internal/overlay/zzm;

    if-eqz v0, :cond_12

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzmd;->getContext()Landroid/content/Context;

    :cond_12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_17
    const-string v1, "event"

    const-string v2, "checkSupport"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "supports"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "appStreaming"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/zzmd;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_29} :catch_2a

    :goto_29
    return-void

    :catch_2a
    move-exception v0

    goto :goto_29
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzmd;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmd;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "checkSupport"

    const-string v1, "action"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfd$13;->zzd(Lcom/google/android/gms/internal/zzmd;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzmd;->zzxa()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzg(Lcom/google/android/gms/internal/zzmd;Ljava/util/Map;)V

    goto :goto_11
.end method
