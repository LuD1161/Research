.class public final LH3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG3/e;


# instance fields
.field public final e:Ll3/i;

.field public final f:Ljava/lang/Object;

.field public final g:Lu3/p;


# direct methods
.method public constructor <init>(LG3/e;Ll3/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LH3/s;->e:Ll3/i;

    invoke-static {p2}, LI3/J;->b(Ll3/i;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, LH3/s;->f:Ljava/lang/Object;

    new-instance p2, LH3/s$a;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, LH3/s$a;-><init>(LG3/e;Ll3/e;)V

    iput-object p2, p0, LH3/s;->g:Lu3/p;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LH3/s;->e:Ll3/i;

    iget-object v1, p0, LH3/s;->f:Ljava/lang/Object;

    iget-object v2, p0, LH3/s;->g:Lu3/p;

    invoke-static {v0, p1, v1, v2, p2}, LH3/f;->b(Ll3/i;Ljava/lang/Object;Ljava/lang/Object;Lu3/p;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method
