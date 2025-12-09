.class public final LG3/k$a;
.super Ln3/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG3/k;->c(LG3/e;Lu3/q;Ljava/lang/Throwable;Ll3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public synthetic i:Ljava/lang/Object;

.field public j:I


# direct methods
.method public constructor <init>(Ll3/e;)V
    .locals 0

    invoke-direct {p0, p1}, Ln3/d;-><init>(Ll3/e;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LG3/k$a;->i:Ljava/lang/Object;

    iget p1, p0, LG3/k$a;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LG3/k$a;->j:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p0}, LG3/k;->a(LG3/e;Lu3/q;Ljava/lang/Throwable;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
