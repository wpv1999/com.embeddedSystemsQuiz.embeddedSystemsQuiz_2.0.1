.class final Lcom/google/android/gms/internal/zztl$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zztl$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zztl;
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


# virtual methods
.method public zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zztl$zzb$zza;)Lcom/google/android/gms/internal/zztl$zzb$zzb;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zztl$zza;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/gms/internal/zztl$zzb$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztl$zzb$zzb;-><init>()V

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/zztl$zzb$zza;->zzaa(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qt:I

    iget v1, v0, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qt:I

    if-eqz v1, :cond_14

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qv:I

    :cond_13
    :goto_13
    return-object v0

    :cond_14
    invoke-interface {p3, p1, p2, v2}, Lcom/google/android/gms/internal/zztl$zzb$zza;->zzb(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qu:I

    iget v1, v0, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qu:I

    if-eqz v1, :cond_13

    iput v2, v0, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qv:I

    goto :goto_13
.end method
