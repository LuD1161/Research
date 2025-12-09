.class public abstract LK3/f;
.super LD3/f0;
.source "SourceFile"


# instance fields
.field public final h:I

.field public final i:I

.field public final j:J

.field public final k:Ljava/lang/String;

.field public l:LK3/a;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, LD3/f0;-><init>()V

    iput p1, p0, LK3/f;->h:I

    iput p2, p0, LK3/f;->i:I

    iput-wide p3, p0, LK3/f;->j:J

    iput-object p5, p0, LK3/f;->k:Ljava/lang/String;

    invoke-virtual {p0}, LK3/f;->N()LK3/a;

    move-result-object p1

    iput-object p1, p0, LK3/f;->l:LK3/a;

    return-void
.end method


# virtual methods
.method public K(Ll3/i;Ljava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, LK3/f;->l:LK3/a;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, LK3/a;->i(LK3/a;Ljava/lang/Runnable;LK3/i;ZILjava/lang/Object;)V

    return-void
.end method

.method public final N()LK3/a;
    .locals 7

    new-instance v6, LK3/a;

    iget v1, p0, LK3/f;->h:I

    iget v2, p0, LK3/f;->i:I

    iget-wide v3, p0, LK3/f;->j:J

    iget-object v5, p0, LK3/f;->k:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LK3/a;-><init>(IIJLjava/lang/String;)V

    return-object v6
.end method

.method public final O(Ljava/lang/Runnable;LK3/i;Z)V
    .locals 1

    iget-object v0, p0, LK3/f;->l:LK3/a;

    invoke-virtual {v0, p1, p2, p3}, LK3/a;->h(Ljava/lang/Runnable;LK3/i;Z)V

    return-void
.end method
