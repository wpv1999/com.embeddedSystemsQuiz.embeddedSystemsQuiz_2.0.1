.class Lcom/google/android/gms/internal/zzme$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzme;->zzpo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzczt:Lcom/google/android/gms/internal/zzme;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzme;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzme$2;->zzczt:Lcom/google/android/gms/internal/zzme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzme$2;->zzczt:Lcom/google/android/gms/internal/zzme;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzme;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->zzxp()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzme$2;->zzczt:Lcom/google/android/gms/internal/zzme;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzme;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->zzxa()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzpo()V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzme$2;->zzczt:Lcom/google/android/gms/internal/zzme;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzme;->zza(Lcom/google/android/gms/internal/zzme;)Lcom/google/android/gms/internal/zzme$zzc;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzme$2;->zzczt:Lcom/google/android/gms/internal/zzme;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzme;->zza(Lcom/google/android/gms/internal/zzme;)Lcom/google/android/gms/internal/zzme$zzc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzme$zzc;->zzfg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzme$2;->zzczt:Lcom/google/android/gms/internal/zzme;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzme;->zza(Lcom/google/android/gms/internal/zzme;Lcom/google/android/gms/internal/zzme$zzc;)Lcom/google/android/gms/internal/zzme$zzc;

    :cond_2b
    return-void
.end method
