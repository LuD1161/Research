.class public final Lcom/google/android/gms/internal/vision/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/S0;


# static fields
.field public static final a:Lcom/google/android/gms/internal/vision/S0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/vision/D;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/D;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/D;->a:Lcom/google/android/gms/internal/vision/S0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/o$a;->b(I)Lcom/google/android/gms/internal/vision/o$a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
