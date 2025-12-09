.class public LP/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP/a;->c(Landroid/graphics/Typeface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:LP/g$c;

.field public final synthetic f:Landroid/graphics/Typeface;

.field public final synthetic g:LP/a;


# direct methods
.method public constructor <init>(LP/a;LP/g$c;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, LP/a$a;->g:LP/a;

    iput-object p2, p0, LP/a$a;->e:LP/g$c;

    iput-object p3, p0, LP/a$a;->f:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LP/a$a;->e:LP/g$c;

    iget-object v1, p0, LP/a$a;->f:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, LP/g$c;->b(Landroid/graphics/Typeface;)V

    return-void
.end method
