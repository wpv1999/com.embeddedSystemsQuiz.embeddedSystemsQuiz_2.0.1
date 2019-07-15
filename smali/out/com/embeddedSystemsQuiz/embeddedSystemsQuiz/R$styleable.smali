.class public final Lcom/embeddedSystemsQuiz/embeddedSystemsQuiz/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/embeddedSystemsQuiz/embeddedSystemsQuiz/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdsAttrs:[I

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x0

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x2

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x3

    .line 197
    new-array v0, v1, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/embeddedSystemsQuiz/embeddedSystemsQuiz/R$styleable;->AdsAttrs:[I

    .line 245
    new-array v0, v1, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/embeddedSystemsQuiz/embeddedSystemsQuiz/R$styleable;->LoadingImageView:[I

    .line 300
    new-array v0, v1, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/embeddedSystemsQuiz/embeddedSystemsQuiz/R$styleable;->SignInButton:[I

    return-void

    .line 197
    nop

    :array_18
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
    .end array-data

    .line 245
    :array_22
    .array-data 4
        0x7f010004
        0x7f010006
        0x7f010007
    .end array-data

    .line 300
    :array_2c
    .array-data 4
        0x7f010003
        0x7f010005
        0x7f010008
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
