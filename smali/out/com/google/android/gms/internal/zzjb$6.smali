.class Lcom/google/android/gms/internal/zzjb$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzli$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzjb;->zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zzlt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzli$zza",
        "<",
        "Lcom/google/android/gms/ads/internal/formats/zzc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbyt:Ljava/lang/String;

.field final synthetic zzcia:Lcom/google/android/gms/internal/zzjb;

.field final synthetic zzcin:Z

.field final synthetic zzcio:D

.field final synthetic zzcip:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjb;ZDZLjava/lang/String;)V
    .registers 8

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjb$6;->zzcia:Lcom/google/android/gms/internal/zzjb;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzjb$6;->zzcin:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzjb$6;->zzcio:D

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzjb$6;->zzcip:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzjb$6;->zzbyt:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzg(Ljava/io/InputStream;)Lcom/google/android/gms/ads/internal/formats/zzc;
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzjb$6;->zzcio:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzjb$6;->zzcip:Z

    if-nez v2, :cond_16

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_16
    const/4 v2, 0x0

    :try_start_17
    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_26

    move-result-object v1

    :goto_1b
    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjb$6;->zzcia:Lcom/google/android/gms/internal/zzjb;

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzjb$6;->zzcin:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzjb;->zza(IZ)V

    :goto_25
    return-object v0

    :catch_26
    move-exception v1

    const-string v2, "Error grabbing image."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_1b

    :cond_2e
    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzayu()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x3d

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Decoded image w: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " h:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    :cond_6c
    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zzc;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjb$6;->zzbyt:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzjb$6;->zzcio:D

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/google/android/gms/ads/internal/formats/zzc;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    goto :goto_25
.end method

.method public synthetic zzh(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzjb$6;->zzg(Ljava/io/InputStream;)Lcom/google/android/gms/ads/internal/formats/zzc;

    move-result-object v0

    return-object v0
.end method

.method public zzsv()Lcom/google/android/gms/ads/internal/formats/zzc;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb$6;->zzcia:Lcom/google/android/gms/internal/zzjb;

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzjb$6;->zzcin:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzjb;->zza(IZ)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic zzsw()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjb$6;->zzsv()Lcom/google/android/gms/ads/internal/formats/zzc;

    move-result-object v0

    return-object v0
.end method
