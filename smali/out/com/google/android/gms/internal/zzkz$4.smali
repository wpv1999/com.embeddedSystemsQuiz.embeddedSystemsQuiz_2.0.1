.class final Lcom/google/android/gms/internal/zzkz$4;
.super Lcom/google/android/gms/internal/zzkz$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzkz;->zze(Landroid/content/Context;Lcom/google/android/gms/internal/zzkz$zzb;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzang:Landroid/content/Context;

.field final synthetic zzcux:Lcom/google/android/gms/internal/zzkz$zzb;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzkz$zzb;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkz$4;->zzang:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzkz$4;->zzcux:Lcom/google/android/gms/internal/zzkz$zzb;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzkz$zza;-><init>(Lcom/google/android/gms/internal/zzkz$1;)V

    return-void
.end method


# virtual methods
.method public zzfp()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkz$4;->zzang:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkz;->zzm(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "auto_collect_location"

    const-string v3, "auto_collect_location"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkz$4;->zzcux:Lcom/google/android/gms/internal/zzkz$zzb;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkz$4;->zzcux:Lcom/google/android/gms/internal/zzkz$zzb;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzkz$zzb;->zzh(Landroid/os/Bundle;)V

    :cond_20
    return-void
.end method
