.class Lcom/google/android/gms/internal/zzbc$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbc;->zzdb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaim:Lcom/google/android/gms/internal/zzbc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbc;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbc$3;->zzaim:Lcom/google/android/gms/internal/zzbc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc$3;->zzaim:Lcom/google/android/gms/internal/zzbc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbc;->zzahs:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdr;->initialize(Landroid/content/Context;)V

    return-void
.end method
