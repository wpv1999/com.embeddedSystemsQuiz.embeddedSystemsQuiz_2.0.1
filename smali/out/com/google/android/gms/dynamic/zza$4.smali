.class Lcom/google/android/gms/dynamic/zza$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/zza$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/dynamic/zza;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic PX:Lcom/google/android/gms/dynamic/zza;

.field final synthetic PZ:Landroid/widget/FrameLayout;

.field final synthetic Qa:Landroid/view/LayoutInflater;

.field final synthetic Qb:Landroid/view/ViewGroup;

.field final synthetic zzavg:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/zza;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zza$4;->PX:Lcom/google/android/gms/dynamic/zza;

    iput-object p2, p0, Lcom/google/android/gms/dynamic/zza$4;->PZ:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/android/gms/dynamic/zza$4;->Qa:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/google/android/gms/dynamic/zza$4;->Qb:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/google/android/gms/dynamic/zza$4;->zzavg:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public zzb(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zza$4;->PZ:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zza$4;->PZ:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/dynamic/zza$4;->PX:Lcom/google/android/gms/dynamic/zza;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zza;->zzb(Lcom/google/android/gms/dynamic/zza;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/dynamic/zza$4;->Qa:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/google/android/gms/dynamic/zza$4;->Qb:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/google/android/gms/dynamic/zza$4;->zzavg:Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
