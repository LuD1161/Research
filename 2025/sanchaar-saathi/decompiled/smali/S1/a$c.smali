.class public final LS1/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LS1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:LS1/a;


# direct methods
.method public constructor <init>(LS1/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, LS1/a$c;->a:LS1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LS1/a;LS1/g;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LS1/a$c;-><init>(LS1/a;)V

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1

    iget-object v0, p0, LS1/a$c;->a:LS1/a;

    invoke-static {v0}, LS1/a;->l(LS1/a;)LS1/a$b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LS1/a$b;->c([BLandroid/hardware/Camera;)V

    return-void
.end method
