.class public Lcom/google/android/gms/internal/zzcp$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private zzatv:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzi;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcp$zza;->zzatv:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public zzir()Landroid/view/View;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcp$zza;->zzatv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzi;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zzmy()Landroid/view/View;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public zzis()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcp$zza;->zzatv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public zzit()Lcom/google/android/gms/internal/zzcw;
    .registers 3

    new-instance v1, Lcom/google/android/gms/internal/zzcp$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcp$zza;->zzatv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzcp$zzb;-><init>(Lcom/google/android/gms/ads/internal/formats/zzi;)V

    return-object v1
.end method
