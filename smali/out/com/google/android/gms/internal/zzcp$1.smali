.class Lcom/google/android/gms/internal/zzcp$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzcp;->zzie()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzatu:Lcom/google/android/gms/internal/zzcp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcp$1;->zzatu:Lcom/google/android/gms/internal/zzcp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcp$1;->zzatu:Lcom/google/android/gms/internal/zzcp;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcp;->zzk(I)V

    return-void
.end method
