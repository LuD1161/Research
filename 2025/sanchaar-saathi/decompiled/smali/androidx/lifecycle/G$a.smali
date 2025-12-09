.class public abstract Landroidx/lifecycle/G$a;
.super Landroidx/lifecycle/G$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/G$a$b;
    }
.end annotation


# static fields
.field public static final d:Landroidx/lifecycle/G$a$b;

.field public static final e:Lm0/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/G$a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/G$a$b;-><init>(Lv3/g;)V

    sput-object v0, Landroidx/lifecycle/G$a;->d:Landroidx/lifecycle/G$a$b;

    new-instance v0, Landroidx/lifecycle/G$a$a;

    invoke-direct {v0}, Landroidx/lifecycle/G$a$a;-><init>()V

    sput-object v0, Landroidx/lifecycle/G$a;->e:Lm0/a$b;

    return-void
.end method
