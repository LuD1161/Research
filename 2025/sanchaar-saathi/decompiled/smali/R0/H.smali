.class public final synthetic LR0/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/work/impl/WorkDatabase;

.field public final synthetic f:LZ0/u;

.field public final synthetic g:LZ0/u;

.field public final synthetic h:Ljava/util/List;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/util/Set;

.field public final synthetic k:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/WorkDatabase;LZ0/u;LZ0/u;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR0/H;->e:Landroidx/work/impl/WorkDatabase;

    iput-object p2, p0, LR0/H;->f:LZ0/u;

    iput-object p3, p0, LR0/H;->g:LZ0/u;

    iput-object p4, p0, LR0/H;->h:Ljava/util/List;

    iput-object p5, p0, LR0/H;->i:Ljava/lang/String;

    iput-object p6, p0, LR0/H;->j:Ljava/util/Set;

    iput-boolean p7, p0, LR0/H;->k:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, LR0/H;->e:Landroidx/work/impl/WorkDatabase;

    iget-object v1, p0, LR0/H;->f:LZ0/u;

    iget-object v2, p0, LR0/H;->g:LZ0/u;

    iget-object v3, p0, LR0/H;->h:Ljava/util/List;

    iget-object v4, p0, LR0/H;->i:Ljava/lang/String;

    iget-object v5, p0, LR0/H;->j:Ljava/util/Set;

    iget-boolean v6, p0, LR0/H;->k:Z

    invoke-static/range {v0 .. v6}, LR0/I;->b(Landroidx/work/impl/WorkDatabase;LZ0/u;LZ0/u;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    return-void
.end method
