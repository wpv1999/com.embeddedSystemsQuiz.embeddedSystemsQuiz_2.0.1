.class final Lcom/google/android/gms/internal/zzlb$zza;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzcvq:Lcom/google/android/gms/internal/zzlb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzlb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlb$zza;->zzcvq:Lcom/google/android/gms/internal/zzlb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzlb;Lcom/google/android/gms/internal/zzlb$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlb$zza;-><init>(Lcom/google/android/gms/internal/zzlb;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlb$zza;->zzcvq:Lcom/google/android/gms/internal/zzlb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlb;->zza(Lcom/google/android/gms/internal/zzlb;Z)Z

    :cond_12
    :goto_12
    return-void

    :cond_13
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlb$zza;->zzcvq:Lcom/google/android/gms/internal/zzlb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlb;->zza(Lcom/google/android/gms/internal/zzlb;Z)Z

    goto :goto_12
.end method
