.class public LT1/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LT1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/google/android/gms/internal/vision/i1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT1/b$a;->a:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/internal/vision/i1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/i1;-><init>()V

    iput-object p1, p0, LT1/b$a;->b:Lcom/google/android/gms/internal/vision/i1;

    return-void
.end method


# virtual methods
.method public a()LT1/b;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/vision/g2;

    iget-object v1, p0, LT1/b$a;->a:Landroid/content/Context;

    iget-object v2, p0, LT1/b$a;->b:Lcom/google/android/gms/internal/vision/i1;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/vision/g2;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/vision/i1;)V

    new-instance v1, LT1/b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, LT1/b;-><init>(Lcom/google/android/gms/internal/vision/g2;LT1/e;)V

    return-object v1
.end method

.method public b(I)LT1/b$a;
    .locals 1

    iget-object v0, p0, LT1/b$a;->b:Lcom/google/android/gms/internal/vision/i1;

    iput p1, v0, Lcom/google/android/gms/internal/vision/i1;->e:I

    return-object p0
.end method
