.class public final LQ0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQ0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:LQ0/j;

.field public d:Z

.field public e:Z

.field public f:J

.field public g:J

.field public h:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LQ0/j;->e:LQ0/j;

    iput-object v0, p0, LQ0/b$a;->c:LQ0/j;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LQ0/b$a;->f:J

    iput-wide v0, p0, LQ0/b$a;->g:J

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, LQ0/b$a;->h:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()LQ0/b;
    .locals 12

    iget-object v0, p0, LQ0/b$a;->h:Ljava/util/Set;

    invoke-static {v0}, Li3/w;->L(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v11

    iget-wide v7, p0, LQ0/b$a;->f:J

    iget-wide v9, p0, LQ0/b$a;->g:J

    iget-boolean v3, p0, LQ0/b$a;->a:Z

    iget-boolean v4, p0, LQ0/b$a;->b:Z

    iget-object v2, p0, LQ0/b$a;->c:LQ0/j;

    iget-boolean v5, p0, LQ0/b$a;->d:Z

    iget-boolean v6, p0, LQ0/b$a;->e:Z

    new-instance v0, LQ0/b;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, LQ0/b;-><init>(LQ0/j;ZZZZJJLjava/util/Set;)V

    return-object v0
.end method

.method public final b(LQ0/j;)LQ0/b$a;
    .locals 1

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LQ0/b$a;->c:LQ0/j;

    return-object p0
.end method
