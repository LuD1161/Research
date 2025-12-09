.class public LT2/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LT2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/flutter/embedding/engine/a;

.field public final c:LY2/b;

.field public final d:Lio/flutter/view/TextureRegistry;

.field public final e:Lio/flutter/plugin/platform/j;

.field public final f:LT2/a$a;

.field public final g:Lio/flutter/embedding/engine/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/a;LY2/b;Lio/flutter/view/TextureRegistry;Lio/flutter/plugin/platform/j;LT2/a$a;Lio/flutter/embedding/engine/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT2/a$b;->a:Landroid/content/Context;

    iput-object p2, p0, LT2/a$b;->b:Lio/flutter/embedding/engine/a;

    iput-object p3, p0, LT2/a$b;->c:LY2/b;

    iput-object p4, p0, LT2/a$b;->d:Lio/flutter/view/TextureRegistry;

    iput-object p5, p0, LT2/a$b;->e:Lio/flutter/plugin/platform/j;

    iput-object p6, p0, LT2/a$b;->f:LT2/a$a;

    iput-object p7, p0, LT2/a$b;->g:Lio/flutter/embedding/engine/b;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, LT2/a$b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public b()LY2/b;
    .locals 1

    iget-object v0, p0, LT2/a$b;->c:LY2/b;

    return-object v0
.end method

.method public c()Lio/flutter/plugin/platform/j;
    .locals 1

    iget-object v0, p0, LT2/a$b;->e:Lio/flutter/plugin/platform/j;

    return-object v0
.end method
