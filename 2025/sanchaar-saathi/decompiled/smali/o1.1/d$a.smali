.class public Lo1/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo1/d;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo1/c$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lo1/d;


# direct methods
.method public constructor <init>(Lo1/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo1/c$c;)V
    .locals 0

    iput-object p1, p0, Lo1/d$a;->h:Lo1/d;

    iput-object p2, p0, Lo1/d$a;->e:Landroid/content/Context;

    iput-object p3, p0, Lo1/d$a;->f:Ljava/lang/String;

    iput-object p4, p0, Lo1/d$a;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lo1/d$a;->h:Lo1/d;

    iget-object v2, p0, Lo1/d$a;->e:Landroid/content/Context;

    iget-object v3, p0, Lo1/d$a;->f:Ljava/lang/String;

    iget-object v4, p0, Lo1/d$a;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lo1/d;->a(Lo1/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lo1/b; {:try_start_0 .. :try_end_0} :catch_0

    throw v0

    :catch_0
    throw v0

    :catch_1
    throw v0
.end method
