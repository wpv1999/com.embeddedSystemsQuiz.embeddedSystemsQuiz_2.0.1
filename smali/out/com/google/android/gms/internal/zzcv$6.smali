.class Lcom/google/android/gms/internal/zzcv$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcv$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzcv;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic zzavg:Landroid/os/Bundle;

.field final synthetic zzavh:Lcom/google/android/gms/internal/zzcv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcv;Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcv$6;->zzavh:Lcom/google/android/gms/internal/zzcv;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcv$6;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcv$6;->zzavg:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcv$6;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcv$6;->zzavg:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method
