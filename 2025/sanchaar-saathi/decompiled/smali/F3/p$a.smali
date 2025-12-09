.class public final LF3/p$a;
.super Ln3/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF3/p;->a(LF3/r;Lu3/a;Ll3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public synthetic j:Ljava/lang/Object;

.field public k:I


# direct methods
.method public constructor <init>(Ll3/e;)V
    .locals 0

    invoke-direct {p0, p1}, Ln3/d;-><init>(Ll3/e;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LF3/p$a;->j:Ljava/lang/Object;

    iget p1, p0, LF3/p$a;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LF3/p$a;->k:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, LF3/p;->a(LF3/r;Lu3/a;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
