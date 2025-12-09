.class public final synthetic LR0/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:LR0/E;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:LR0/o;

.field public final synthetic h:Lu3/a;

.field public final synthetic i:LQ0/u;


# direct methods
.method public synthetic constructor <init>(LR0/E;Ljava/lang/String;LR0/o;Lu3/a;LQ0/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR0/G;->e:LR0/E;

    iput-object p2, p0, LR0/G;->f:Ljava/lang/String;

    iput-object p3, p0, LR0/G;->g:LR0/o;

    iput-object p4, p0, LR0/G;->h:Lu3/a;

    iput-object p5, p0, LR0/G;->i:LQ0/u;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, LR0/G;->e:LR0/E;

    iget-object v1, p0, LR0/G;->f:Ljava/lang/String;

    iget-object v2, p0, LR0/G;->g:LR0/o;

    iget-object v3, p0, LR0/G;->h:Lu3/a;

    iget-object v4, p0, LR0/G;->i:LQ0/u;

    invoke-static {v0, v1, v2, v3, v4}, LR0/I;->a(LR0/E;Ljava/lang/String;LR0/o;Lu3/a;LQ0/u;)V

    return-void
.end method
