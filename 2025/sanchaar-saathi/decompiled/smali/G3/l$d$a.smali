.class public final LG3/l$d$a;
.super Ln3/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG3/l$d;->b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public synthetic i:Ljava/lang/Object;

.field public j:I

.field public final synthetic k:LG3/l$d;

.field public l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LG3/l$d;Ll3/e;)V
    .locals 0

    iput-object p1, p0, LG3/l$d$a;->k:LG3/l$d;

    invoke-direct {p0, p2}, Ln3/d;-><init>(Ll3/e;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LG3/l$d$a;->i:Ljava/lang/Object;

    iget p1, p0, LG3/l$d$a;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LG3/l$d$a;->j:I

    iget-object p1, p0, LG3/l$d$a;->k:LG3/l$d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LG3/l$d;->b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
