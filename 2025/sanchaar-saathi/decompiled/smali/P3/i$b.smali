.class public final LP3/i$b;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP3/i;->e(LO3/d;)LP3/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lv3/t;

.field public final synthetic g:J

.field public final synthetic h:Lv3/v;

.field public final synthetic i:LO3/d;

.field public final synthetic j:Lv3/v;

.field public final synthetic k:Lv3/v;


# direct methods
.method public constructor <init>(Lv3/t;JLv3/v;LO3/d;Lv3/v;Lv3/v;)V
    .locals 0

    iput-object p1, p0, LP3/i$b;->f:Lv3/t;

    iput-wide p2, p0, LP3/i$b;->g:J

    iput-object p4, p0, LP3/i$b;->h:Lv3/v;

    iput-object p5, p0, LP3/i$b;->i:LO3/d;

    iput-object p6, p0, LP3/i$b;->j:Lv3/v;

    iput-object p7, p0, LP3/i$b;->k:Lv3/v;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, LP3/i$b;->f:Lv3/t;

    iget-boolean v1, p1, Lv3/t;->e:Z

    if-nez v1, :cond_4

    iput-boolean v0, p1, Lv3/t;->e:Z

    iget-wide v0, p0, LP3/i$b;->g:J

    cmp-long p1, p2, v0

    if-ltz p1, :cond_3

    iget-object p1, p0, LP3/i$b;->h:Lv3/v;

    iget-wide p2, p1, Lv3/v;->e:J

    const-wide v0, 0xffffffffL

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    iget-object p2, p0, LP3/i$b;->i:LO3/d;

    invoke-interface {p2}, LO3/d;->u()J

    move-result-wide p2

    :cond_0
    iput-wide p2, p1, Lv3/v;->e:J

    iget-object p1, p0, LP3/i$b;->j:Lv3/v;

    iget-wide p2, p1, Lv3/v;->e:J

    cmp-long p2, p2, v0

    const-wide/16 v2, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, LP3/i$b;->i:LO3/d;

    invoke-interface {p2}, LO3/d;->u()J

    move-result-wide p2

    goto :goto_0

    :cond_1
    move-wide p2, v2

    :goto_0
    iput-wide p2, p1, Lv3/v;->e:J

    iget-object p1, p0, LP3/i$b;->k:Lv3/v;

    iget-wide p2, p1, Lv3/v;->e:J

    cmp-long p2, p2, v0

    if-nez p2, :cond_2

    iget-object p2, p0, LP3/i$b;->i:LO3/d;

    invoke-interface {p2}, LO3/d;->u()J

    move-result-wide v2

    :cond_2
    iput-wide v2, p1, Lv3/v;->e:J

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "bad zip: zip64 extra too short"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "bad zip: zip64 extra repeated"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, LP3/i$b;->a(IJ)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method
